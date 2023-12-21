package org.example.article;
// DTO - Data Transfer Object

// Article을 표현하기 위한 클래스
public class ArticleDto {
  // null값이 들어갈 수 있으므로 null이 있는 Integer 사용
  private Integer id;
  private String title;
  private String content;

  public ArticleDto(Integer id, String title, String content) {
    this.id = id;
    this.title = title;
    this.content = content;
  }

  public Integer getId() {
    return id;
  }

  public String getTitle() {
    return title;
  }

  public String getContent() {
    return content;
  }
}
