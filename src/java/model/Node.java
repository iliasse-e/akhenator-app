/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;

/**
 *
 * @author stag
 */
public class Node implements Serializable {

    protected Node nextYes;
    protected Node nextNo;
    protected String content;
    protected boolean question;

    public Node(String content) {
        nextYes = null;
        nextNo = null;
        this.content = content;
        question = false;
    }

    public void grow(String newQuestion, String newAnswer, boolean toNewAnswer) {
        if (question) {
            return;
        }
        Node newAnswerNode = new Node(newAnswer);
        Node oldAnswerNode = new Node(content);
        content = newQuestion;
        question = true;
        if (toNewAnswer == true) {
            nextYes = newAnswerNode;
            nextNo = oldAnswerNode;
        } else {
            nextYes = oldAnswerNode;
            nextNo = newAnswerNode;
        }
    }

    @Override
    public String toString() {
        String result = question ? "Question: " : "Réponse: ";
        result += content;
        return result;
    }

    public Node getNextYes() {
        return nextYes;
    }

    public void setNextYes(Node nextYes) {
        this.nextYes = nextYes;
    }

    public Node getNextNo() {
        return nextNo;
    }

    public void setNextNo(Node nextNo) {
        this.nextNo = nextNo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isQuestion() {
        return question;
    }

    public void setQuestion(boolean question) {
        this.question = question;
    }
}
