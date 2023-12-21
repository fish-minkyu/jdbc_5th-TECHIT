package org.example.article;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

// ArticleService와 역할은 같지만
// 실제로 어떤 방식으로 동작하는지는 다르다.

// ArticeService가 데이터를 속성에 저장한다면
// ArticeDBService는 DB를 사용한다.
public class ArticleDBService {
  private final Scanner scanner;
  private final ArticleDao dao;

  public ArticleDBService(Scanner scanner) {
    this.scanner = scanner;
    try {
      // 데이터베이스에 연결해서
      Connection connection = DriverManager.getConnection("jdbc:sqlite:db.sqlite");
      // DAO로 넘겨준다.
      this.dao = new ArticleDao(connection);
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }

  }

  // 1. 게시글을 작성할 때, 필요한 데이터를 일단 입력 받자
  public void writeArticle() {
    // 제목을 입력 받는다.
    System.out.print("제목을 입력하세요: ");
    String newTitle = this.scanner.nextLine();
    // 본문을 입력받는다.
    System.out.print("본문을 입력하세요: ");
    String newContent = this.scanner.nextLine();
    // DAO에게 데이터를 전달해 데이터베이스에 작성을 요청한다.
    this.dao.create(newTitle, newContent);
  }

  // 2. 작성된 게시글을 출력할건데, 아직은 아무것도 안함
  public void showAllTitles() {
    List<ArticleDto> articles = this.dao.readAll();
    // 데이터베이스에서 회수한 데이터를 하나씩 출력한다.
    for (ArticleDto article : articles) {
      System.out.println(String.format("%d. %s", article.getId(), article.getTitle()));
    }
  }

  // 3. 하나의 게시글의 정보를 출력하는 메서드
  public void readArticle() {
    System.out.print("글 번호를 선택하세요: ");
    String idxString = this.scanner.nextLine();
    int idx = Integer.parseInt(idxString);
    ArticleDto article = this.dao.readOne(idx);
    System.out.println();
    System.out.println(String.format("제목: %s", article.getTitle()));
    System.out.println(String.format("내용: %s", article.getContent()));
  }
}
