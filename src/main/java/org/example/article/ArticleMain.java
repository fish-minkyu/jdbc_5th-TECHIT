package org.example.article;

import org.example.ArticleSimple;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

// 사용자가 하고 싶은 행동을 입력받아
// 그 내용을 ArticleService로 전달하는 클래스 or main할

// 안내만 하는 역할
public class ArticleMain {
  public static void main(String[] args) {
    // 게시글은 제목과 내용으로 구성되어 있다.

    // 1. 사용자는 반복해서 명령을 입력한다.
    // 1-1. 사용자가 1을 입력하면, 게시글을 작성하는 메뉴를 선택한 것
    // 1-2. 사용자가 2를 입력하면, 작성된 게시글의 제목을 전부 나열하는 메뉴를 선택한 것.
    // 1-3. 사용자가 3을 입력하면, 게시글 상세보기 메뉴를 선택한 것
    // 1-4. 사용자가 q를 입력하면, 프로그램 종료 (main 메서드의 끝에 도달하는 것)

    // 사용자는 반복해서 게시글을 작성할 수 있다.
    Scanner scanner = new Scanner(System.in);
    // 클래스 단위로 객체를 저장한다.
    // 새 ArticleService를 만든다.
    ArticleService service = new ArticleService(scanner);

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
         // service에게 일을 맡긴다.
          service.writeArticle();
          break;
        // 글 목록 보기
        case "2":
         // service에게 일을 맡긴다.
          service.showAllTitles();
          break;
        // 글 하나 보기
        case "3":
          // service에게 일을 맡긴다.
          service.readArticle();
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
