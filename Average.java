package average;

import java.util.*;

public class Average{
    
    public static void main(String[]args){
        int limit = 10;  // size for both arrys to compute average and numbers above the average
        
        //Takes number input from user and stores it inside the array
        int[] numbers = new int[limit];
        Scanner input = new Scanner(System.in);
        System.out.println("Enter numbers");
        for(int i = 0; i < numbers.length; i++){
            numbers[i] = input.nextInt();
        }
        // calculate the sum of the numbers inside the array
        double sum = 0;
        for(int i = 0; i <numbers.length; i++){
            sum += numbers[i];
        }
        // calculate the total average of the array
        double average = sum/limit;
        System.out.println(average);
        
        // checks and print out the number of numbers that are above the array average
        int countAboveAverage = 0;
        for(int i = 0; i < numbers.length; i++){
            if(numbers[i] > average){
                countAboveAverage++;
            }
        }
        System.out.println(countAboveAverage);
        
        //second code that generates random numbers and stores them inside the array
        
        // Random number generator and stores inside the array
        Random random = new Random();
        int[] digit = new int[limit];
        for(int i =0; i < digit.length; i++){
           digit[i] = random.nextInt(901) + 100;
        }
        
        // sum the values inside the array
        double addition = 0;
        for(int i = 0; i < digit.length; i++){
            addition += digit[i];
        }
        
        // calculates the average and get the number of values that are above the average
        double mean = addition/digit.length;
        System.out.print(mean);
        int countOverAverage = 0;
        for(int i = 0; i < digit.length; i++){
            if(digit[i] > mean){
                countOverAverage++;
            }
        }
        System.out.print(countOverAverage);
        
    }
}


        
