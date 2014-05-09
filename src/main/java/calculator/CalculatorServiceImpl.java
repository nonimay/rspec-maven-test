package calculator;

public class CalculatorServiceImpl implements CalculatorService {

	public int sum(int[] array) {
		int sum = 0;
		for (int number : array) {
			sum += number;
		}
		return sum;
	}

}
