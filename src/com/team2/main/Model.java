package com.team2.main;

import javax.servlet.http.HttpServletRequest;

public class Model {

	public static void calc(HttpServletRequest request) {

		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));

		System.out.println(name);

		String photo;

		switch (name) {
		case "������ �˴ϴ�":
			photo = "intro.png";
			break;
		case "��-���� �ڷγ�19 ���":
			photo = "vaccine.jpg";
			break;
		case "Ŀ�� ��-��":
			photo = "shoes.jpg";
			break;
		case "�ſ�-�Ϳ��� �����":
			photo = "catIntro.jpg";
			break;

		default:
			photo = "�ֵ���ũ.png";
			break;
		}

		System.out.println(photo + "2");
		if (request.getParameterValues("coupon") != null) {
			price = (int) (0.9 * price);
		}
		System.out.println(photo + "3");

		Product product = new Product(name, price, quantity, photo, price * quantity, null);
		System.out.println(photo + "4");
		request.setAttribute("product", product);
		System.out.println(photo + "5");
	}
}

//�� �޾ƿ���
// ǰ�� �޾ƿ���
// ǰ���� ���� �޾ƿ���
// ���� �޾ƿ���
// üũ�ڽ��� ���� ���� �޾ƿ���

// �� ����(if���� �Ἥ üũ�ڽ��� üũ �Ǿ������� saleprice, �ƴϸ� price�� �� ������ ���ϱ� ����)

// �� ���� �Ķ���ͷ� �ѱ��
// ���� �͵��� ��̸���Ʈ�� �ؼ� ��Ʈ����Ʈ�� �ѱ��
