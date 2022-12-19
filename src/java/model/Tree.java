/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author stag
 */
public class Tree {
    protected Node root;
    protected Node currentNode;
    
    public Tree() {
        root = new Node("cheval");
        currentNode = root;
    }
    
    public Tree(Node root) {
        this.root = root;
        this.currentNode = root;
    }
    
    public void advance(boolean answer) {
        if(!currentNode.isQuestion()) {
            return;
        }
        if(answer == true) {
            currentNode = currentNode.getNextYes();
        } else {
            currentNode = currentNode.getNextNo();
        }
    }
    
    public void grow(String newQuestion, String newAnswer, boolean toNewAnswer) {
        currentNode.grow(newQuestion, newAnswer, toNewAnswer);
    }

    public Node getRoot() {
        return root;
    }

    public void setRoot(Node root) {
        this.root = root;
    }

    public Node getCurrentNode() {
        return currentNode;
    }

    public void setCurrentNode(Node currentNode) {
        this.currentNode = currentNode;
    }
    
    public ArrayList<Node> toArrayList() {
        ArrayList<Node> list = new ArrayList<>();
        populateList(root, list);
        return list;
    }
    
    private void populateList(Node n, ArrayList<Node> list) {
        if(n.isQuestion()) {
            populateList(n.getNextNo(), list);
            populateList(n.getNextYes(), list);
        }
        list.add(n);
    }
    
    public void print() {
        print(root);
    }
    
    private void print(Node n) {
        if(n.isQuestion()) {
            print(n.getNextNo());
            print(n.getNextYes());
        }
        System.out.println(n);
    }
}
