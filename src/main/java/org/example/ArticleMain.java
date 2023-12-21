package org.example;

import java.awt.desktop.ScreenSleepEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class ArticleMain {
  public static void main(String[] args) {
    // 게시글은 제목과 내용으로 구성되어 있다.

    // 1. 사용자는 반복해서 명령을 입력한다.
    // 1-1. 사용자가 1을 입력하면, 게시글을 작성하는 메뉴를 선택한 것
    // 1-2. 사용자가 2를 입력하면, 작성된 게시글의 제목을 전부 나열하는 메뉴를 선택한 것.
    // 1-3. 사용자가 3을 입력하면, 게시글 상세보기 메뉴를 선택한 것
    // 1-4. 사용자가 q를 입력하면, 프로그램 종료 (main 메서드의 끝에 도달하는 것)

    // 사용자는 반복해서 게시글을 작성할 수 있다.
    // 클래스 단위로 객체를 저장한다.
    List<ArticleSimple> articles = new ArrayList<>();
    Scanner scanner = new Scanner(System.in);

    // 사용자가 종료를 원하는 flag
    // quit을 false로 초기화를 한 이유는
    // 코드를 직관적으로 표현하기 위해서
    // => switch의 q가 오면 quit은 true이으모
    boolean quit = false;
    while (!quit) {
      // 사용자에게 선택지를 제시하는 출력을 한다.
      System.out.println("1. 글 작성하기");
      System.out.println("2. 글 제목 목록 보기");
      System.out.println("3. 글 하나 보기");
      System.out.println("q. 종료");

      // 명령을 입력받는다.
      String command = scanner.nextLine();

      // 사용자의 입력에 따라 다른 기능을 실행한다.
      // switch는 주어진 데이터가 무엇인지에 따라 실행하는 것이 달라진다.
      switch (command) {
        // 글 작성하기
        case "1":
          // print와 println은 줄바꿈이 일어나지 않느냐 나느냐 차이
          // 제목을 입력받는다.
          System.out.print("제목을 입력하세요: ");
          String newTitle = scanner.nextLine();
          // 본문을 입력받는다.
          System.out.print("본문을 입력하세요: ");
          String newContent = scanner.nextLine();
          // 게시글 목록에 저장한다.
          ArticleSimple newArticle =
            new ArticleSimple(newTitle, newContent);

          articles.add(newArticle);
          // articles.add(new ArticleSimple(newTitle, newContent));
          break;
        // 글 목록 보기
        case "2":
          // 모든 글을 순회할 것인데,
          // 사용자가 하나 보기에서 어떤 숫자를 넣을지를 판단할 수 있게 하기 위하여
          // i를 같이 출력해준다.
          for (int i = 0; i < articles.size(); i++) {
            ArticleSimple article = articles.get(i);
            // '번호. 제목' 형태로 출력 준비
            String output
              = String.format("%d. %s", i, article.getTitle());
            System.out.println(output);
          }
          break;
        // 글 하나 보기
        case "3":
          System.out.println("글 번호를 선택하세요: ");
          // 사용자에게서 몇번 글을 볼건지 입력 받고,
          int index = Integer.parseInt(scanner.nextLine());

          // 해당 글을 가져와서
          ArticleSimple article = articles.get(index);
          // 제목: {제목}
          // 내용: {내용}
          // 의 형태로 출력한다.
          System.out.println(); // 구분선
          System.out.println(String.format("제목: %s", article.getTitle()));
          System.out.println(String.format("내용: %s", article.getContent()));
          break;
        // 반복 종료하기
        case "q":
          quit = true;
          break;
        default:
          System.out.println("잘못된 입력입니다.");
      }
      System.out.println(); // 구분선
    }
    System.out.println("종료");
  }
}
