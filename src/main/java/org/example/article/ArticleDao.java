package org.example.article;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

// Dao - Data Access Object
// ArticleDao는 오롯이 데이터베이스를 다루는 역할이다.
// 즉, DB와의 소통을 담당한다.

// ArticeService에 있던 List의 담당역할을 ArticleDao가 대신한다.
public class ArticleDao {
  // 어떤 DB와의 연결을 나타내는 connection
  private final Connection connection;

  public ArticleDao(Connection connection) {
    this.connection = connection;
  }

  // 제목과 내용을 전달받으면
  // 데이터베이스에 새로운 게시글(artice) 행을 만들고
  // 성공 여부에 따라서 boolean을 반환한다.
  public boolean create(String title, String content) {
    System.out.println("받은 제목: " + title);
    System.out.println("받은 내용: " + content);
    // Statement: JDBC에 전달하는 SQL문을 전달하는 역할
    // createStatement의 에러를 잡아줘야 한다.
    // try - with - resources
    try (Statement statement = this.connection.createStatement();) {
      String insertSQL = String.format("INSERT INTO article(title, content) VALUES ('%s', '%s')", title, content);
      System.out.println(statement.executeUpdate(insertSQL));
      return true;
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
  }

  // 데이터베이스에 저장된 모든 글 정보를 List형태로 반환한다.
  public List<ArticleDto> readAll() {
    /*
    -- article 테이블의 모든 데이터를 반환하는 SQL문
    SELECT * FROM article;
    */
    System.out.println("모든 데이터 조회하기");
    try (Statement statement = this.connection.createStatement()) {
      String selectSql = "SELECT * FROM article";
      ResultSet resultSet = statement.executeQuery(selectSql);
      // 여러개의 데이터를 돌려줄 예정이니, List 사용
      List<ArticleDto> articles = new ArrayList<>();

      // ResultSet은 .next()메서드를 통해서 다음 줄을 확인하며,
      // 만일 다음 줄이 없으면, .next()결과는 false다.
      while (resultSet.next()) {
        System.out.println(resultSet.getInt("id"));
        System.out.println(resultSet.getString("title"));
        System.out.println(resultSet.getString("content"));
        // resultSet의 데이터를 바탕으로 새로운 ArticleDto 객체를 만들자
        ArticleDto article = new ArticleDto(
          resultSet.getInt("id"),
          resultSet.getString("title"),
          resultSet.getString("content")
        );
        articles.add(article);
      }

      return articles;
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
  }

  // PreparedStatement
  // 조회하고 싶은 게시글을 받고, 그 게시글을 객체의 형태로 반환하는 메서드
  public ArticleDto readOne(int id) {
    System.out.println("단일 데이터 조회하기");
    /*
    특정 id인 article 행 조회
    SELECT * FROM article WHERE id = '%d';
    */
    // PreparedStatement는 SQL을 먼저 준비
    // PreparedStatement는 내부에서 SQL Injection 대비가 되어있다.
    // (주석처리, 세미콜론 등 SQL Injection 문자들을 이스케이프 처리한다.)
    // %d 대신 ?을 사용
    String selectSql = "SELECT * FROM article WHERE id = ?;";
    try (PreparedStatement statement = connection.prepareStatement(selectSql)) {
      // 첫번째 물음표에 id를 넣준다란 의미
      // parameterindex는 1부터 시작한다.
      statement.setInt(1, id);
      // 결과는 동일하게 ResultSet으로 관리한다.
      ResultSet resultSet = statement.executeQuery();
      // ResultSet을 사용한다.
      if (resultSet.next()) {
        return new ArticleDto(
          resultSet.getInt("id"),
          resultSet.getString("title"),
          resultSet.getString("content")
        );
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    // 지금은 null이지만.. 나아가면 Optional을 사용
    return null;
  }
}