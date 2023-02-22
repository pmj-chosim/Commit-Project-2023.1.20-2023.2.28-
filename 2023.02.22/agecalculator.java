import java.time.LocalDate;
import java.time.Period;
import java.util.Scanner;

public class BirthYearCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your name: ");
        String name = scanner.nextLine();

        int age = 0;
        boolean isValidAge = false;
        while (!isValidAge) {
            try {
                System.out.print("Enter your age: ");
                age = scanner.nextInt();
                if (age < 0) {
                    throw new IllegalArgumentException("Age cannot be negative.");
                }
                isValidAge = true;
            } catch (Exception e) {
                System.out.println("Invalid age. Please enter a non-negative integer.");
                scanner.nextLine();
            }
        }

        int birthYear = 2023 - age;

        System.out.println("Hello, " + name + "! Your birth year is " + birthYear + ".");
        
        LocalDate birthDate = LocalDate.of(birthYear, 1, 1);
        LocalDate currentDate = LocalDate.now();
        Period agePeriod = Period.between(birthDate, currentDate);
        int ageYears = agePeriod.getYears();
        int ageMonths = agePeriod.getMonths();
        int ageDays = agePeriod.getDays();
        
        System.out.println("You are " + ageYears + " years, " + ageMonths + " months, and " + ageDays + " days old.");
    }
}
