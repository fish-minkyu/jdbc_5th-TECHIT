# JDBC Basics

JDBC는 Java Database Connectivity의 약자이다.
Java를 이용해 데이터베이스를 사용할 수 있게 해주는 API이다.

- [테스트용 SQL](sql)
- [JDBC 기본](src/main/java/org/example/Main.java)
- [단일 클래스로 콘솔 어플리케이션 만들기](src/main/java/org/example/single)
- [클래스에 따라 역할을 분담해 보기](src/main/java/org/example/memory)
- [JDBC 적용하기](src/main/java/org/example/jdbc)

## `DriverManager`

JDBC에선 `DriverManager`를 통하여 어떤 데이터베이스에 연결할지에 따라 어떤 Driver를 사용할지를 결정한다.
어떤 데이터베이스에 접근할지는 JDBC URL이라는 문자열을 통해 정해진다.

```java
// JDBC URL 설정
String connectionString = "jdbc:sqlite:db.sqlite";
// 데이터베이스에 연결
try (Connection connection = DriverManager.getConnection(connectionString)) {
    System.out.println("Connection Success!");
} catch (SQLException e) {
    System.out.println(e.getErrorCode());
    System.out.println(e.getMessage());
    throw new RuntimeException(e);
}
```

여기서 받는 `Connection` 객체를 이용하면 데이터베이스에 SQL을 전송하기 위한 객체를 받을 수 있다.

이전에는 `DriverManager`를 사용하기 전 Driver 클래스를 수동으로 가져와야 했다.
지금은 할필요 없다.

```java
try {
    Class.forName("org.sqlite.JDBC");
} catch (ClassNotFoundException e) {
    throw new RuntimeException(e);
}
```

## `Statement`

가장 기본적인 SQL을 실행하기 위한 객체.

```java
try (Statement statement = connection.createStatement()){
    String tableSql = """
            CREATE TABLE IF NOT EXISTS user (
               id INTEGER primary key autoincrement,
               username VARCHAR(64),
               first_name VARCHAR(32),
               last_name VARCHAR(32),
               email VARCHAR(100)
            );""";
    statement.execute(tableSql);
} catch (SQLException e) {
    throw new RuntimeException(e);
}
```

- `statement.execute(String sql)`: 주어진 SQL을 실행한다.
- `statement.executeQuery(String sql)`: 주어진 `SELECT`문을 실행한다. `ResultSet`을 반환한다.
- `statement.executeUpdate(String sql)`: 데이터의 구조를 바꾸는, 결과를 반환하지 않는 `INSERT`, `UPDATE` 또는 DDL 등을 실행한다.

### `ResultSet`

`ResultSet`은 `SELECT`문의 결과로 반환된 테이블을 살펴보기 위한 인터페이스이다.

```java
String selectSql = """
        SELECT * FROM user;
        """;
try (Statement statement = connection.createStatement()){
    ResultSet resultSet = statement.executeQuery(selectSql);
    while (resultSet.next()) {
        System.out.println(resultSet.getLong("id"));
        System.out.println(resultSet.getString(2));
    }
} catch (SQLException e) {
    throw new RuntimeException(e);
}
```

`ResultSet`의 `.next()` 메서드를 호출하면 테이블의 다음 줄로 이동한다. 이후 `get{자료형}()` 형식으로 컬럼의 값을 가져올 수 있다.
이때 컬럼 이름 또는 몇번째 컬럼인지를 인자로 전달한다.

```java
// 결과 테이블의 id 칼럼의 데이터를 long으로 반환한다.
System.out.println(resultSet.getLong("id"));
// 결과 테이블의 두번째 칼럼의 데이터를 String으로 반환한다.
System.out.println(resultSet.getString(2));
```

만약 테이블의 다음줄이 없다(마지막 줄이다)면, `next()`는 `false`를 반환한다.

### SQL Injection

문자열 기반의 `Statement` 활용은 악성 사용자의 공격에 취약하다.

```java
Scanner scanner = new Scanner(System.in);
String input = scanner.nextLine();
String injectSql = "SELECT * FROM user WHERE id = ";
injectSql += input;
injectSql += ";";
```

만약 위의 코드에 `input` 문자열이 `"1 OR 1 = 1";`가 입력된다면

```sql
SELECT * FROM user WHERE id = 1 OR 1 = 1;
```

와 같은 결과가 나오게 되어, `user` 테이블의 전체 데이터가 조회된다.
이런 식의 보안 공격을 SQL Injection이라고 한다.

## `PreparedStatement`

SQL Injection에 대비하여 `PreparedStatement`를 사용할 수 있다.
SQL에 매개변수를 적용하여, 입력되는 데이터에 악성 SQL이 들어가지 않도록 방지한다.

```java
String targetSql = "SELECT * FROM user WHERE id = ?";
try (PreparedStatement statement = connection.prepareStatement(targetSql)){
    statement.setString(1, input);
    statement.execute();
} catch (SQLException e) {
    throw new RuntimeException(e);
}
```

단 테이블의 이름은 변수로 전달하지 못한다.

```java
String sql = """
        SELECT * FROM ?;
        """;
try (PreparedStatement statement = connection.prepareStatement(sql)){
    statement.setString(1, "user");
    ResultSet resultSet = statement.executeQuery();
} catch (SQLException e) {
    throw new RuntimeException(e);
}
```