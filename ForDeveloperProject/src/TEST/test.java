package TEST;

import DAO.memberDAO;

public class test {
	public static void main(String[] args) {
		memberDAO testDAO = new memberDAO();
		boolean check = testDAO.login("admin", "1234");
		System.out.println(check);
	}
}
