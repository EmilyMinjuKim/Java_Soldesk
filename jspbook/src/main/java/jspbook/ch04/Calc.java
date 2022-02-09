package jspbook.ch04;

public class Calc {
	int result = 0;
	
	//생성자 오버로딩
	public Calc(int num1, int num2, String op) {
		switch(op){
		case "+":
			result = num1 + num2;
			break;
		case "-":
			result = num1 - num2;
			break;
		case "*":
			result = num1 * num2;
			break;
		case "/":
			result = num1 / num2;
			break;
		}
	}

	//계산한 결과값 리턴 
	public int getResult() {
		return result;
	}
	
}
