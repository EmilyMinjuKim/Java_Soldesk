package jspbook.ch03;

//bean: controller
public class CalcBean {
	private int num1, num2;
	private String operator = "";
	private int result;
	
	public void calculate() {
		switch(operator){
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
	
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public int getResult() {
		return result;
	}
}
