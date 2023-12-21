package org.example;

// POJO - Plain Old Java Object: 데이터를 담기 위한 java 객체
public class ArticleSimple {
  private String title;
  private String content;

  public ArticleSimple() {}

  public ArticleSimple(String title, String content) {
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
