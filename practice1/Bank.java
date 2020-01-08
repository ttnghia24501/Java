/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Practice1;


/**
 *
 * @author trantuannghia
 */
public class Bank {
   private double balance;
    private double rate;

    public Bank(double balance, double rate) {
        this.balance = balance;
        this.rate = rate;
    }

    public double calculateInterest() {
        double calculatorInterest = balance * (rate / 1200);
        return calculatorInterest;
    }

    public static void main(String[] args) {
        Bank bank = new Bank(1000, 10);
        System.out.println("The monthly interest is: "+bank.calculateInterest());
    }
}
