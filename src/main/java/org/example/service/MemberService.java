package org.example.service;

import org.example.repository.MemberRepository;

import java.sql.Connection;

public class MemberService {
  private MemberRepository memberRepository;
  public MemberService(Connection conn) {
    memberRepository = new MemberRepository(conn);
  }

  public boolean isLoginIdDup(String loginId) {
    return memberRepository.isLoginIdDup(loginId);
  }

  public int join(String loginId, String loginPw, String name) {
    return memberRepository.join(loginId, loginPw, name);
  }
}