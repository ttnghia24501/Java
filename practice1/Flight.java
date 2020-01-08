/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Practice2;

/**
 *
 * @author trant
 */
public class Flight {

    private int number;
    private String destination;

    public Flight() {

    }

    public Flight(int number, String destination) {
        this.number = number;
        this.destination = destination;
    }

    public void display() {
        System.out.println("Flight Number is :" + getNumber());
        System.out.println("Flight Destination is :" + getDestination());
    }

    public int getNumber() {
        return number;
    }

    public String getDestination() {
        return destination;
    }

    public static void main(String[] args) {
        Flight flight = new Flight(857, "Toronto");
        flight.display();

    }
}
