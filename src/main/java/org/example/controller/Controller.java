package org.example.controller;

import org.example.Rq;

import java.sql.Connection;
import java.util.Scanner;

public abstract class Controller {
  protected Connection conn;
  public Controller(Connection conn, Rq rq) {
    this.conn = conn;
  }
}