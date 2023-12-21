package org.example.article;

// POJO - Plain Old Java Object: 데이터를 담기 위한 java 객체
public class ArticleMem {
  private String title;
  private String content;

  public ArticleMem() {}

  public ArticleMem(String title, String content) {
    this.title = title;
    this.content = content;
  }

  // Getter
  public String getTitle() {
    return title;
  }

  public String getContent() {
    return content;
  }
}
