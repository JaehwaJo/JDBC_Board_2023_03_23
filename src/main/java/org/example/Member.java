package org.example;

import java.util.Map;

class Member {
  public int id;
  public String regDate;
  public String updateDate;
  public String loginId;
  public String loginPw;
  public String name;

  public Member(int id, String loginId, String loginPw, String name) {
    this.id = id;
    this.loginId = loginId;
    this.loginPw = loginPw;
    this.name = name;
  }

  public Member(int id, String regDate, String updateDate, String title, String body, String name) {
    this.id = id;
    this.regDate = regDate;
    this.updateDate = updateDate;
    this.loginId = loginId;
    this.loginPw = loginPw;
    this.name = name;
  }

  public Member(Map<String, Object> memberMap) {
    this.id = (int) memberMap.get("id");
    this.regDate = (String) memberMap.get("regDate");
    this.updateDate = (String) memberMap.get("updateDate");
    this.loginId = (String) memberMap.get("title");
    this.loginPw = (String) memberMap.get("body");
    this.name = (String) memberMap.get("name");
  }

  @Override
  public String toString() {
    return "Member{" +
        "id=" + id +
        ", loginId='" + loginId + '\'' +
        ", name='" + name + '\'' +
        '}';
  }
}