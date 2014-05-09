package calculator;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CalculatorApp {

	public static void main(String[] args) throws Exception {
		int[] array = { 2, 3 };
		ClassPathXmlApplicationContext application_context = new ClassPathXmlApplicationContext(
				"ApplicationContext.xml");
		CalculatorService calculator = (CalculatorService) application_context
				.getBean("calculatorService");
		System.out.println("2 + 3 is: "
				+ Integer.toString(calculator.sum(array)));
	}

}