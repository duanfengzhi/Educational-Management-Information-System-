package com.hfut.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthImg extends HttpServlet {

	
	public AuthImg() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	private final Font mFont = new Font("Arial Black", Font.PLAIN, 16);
	private final int IMG_WIDTH = 100;
	private final int IMG_HEIGHT = 18;
	
	private Color getRandColor(int a, int d){
		Random random = new Random();
		if(a > 255) a = 255;
		if(d > 255) d = 255;
		int r = a + random.nextInt(d - a);
		int g = a + random.nextInt(d - a);
		int b = a + random.nextInt(d - a);
		return new Color(r, g, b);
	}
	private String getRandomChar(){
		int rand = (int)Math.round(Math.random()*2);
		long itmp = 0;
		char ctmp = '\u0000';
		switch(rand){
		case 1:
			itmp = Math.round(Math.random() * 25 +65);
			ctmp = (char)itmp;
			return String.valueOf(ctmp);
		case 2:
			itmp = Math.round(Math.random() * 25 +97);
			ctmp = (char)itmp;
			return String.valueOf(ctmp);
		default:
			itmp = Math.round(Math.random() * 9);
			return itmp + "";
		}
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");
		BufferedImage image = new BufferedImage(IMG_WIDTH, IMG_HEIGHT, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		Random random = new Random();
		g.setColor(getRandColor(200, 250));
		g.fillRect(1, 1, IMG_WIDTH-1, IMG_HEIGHT-1);
		g.setColor(new Color(102,102,102));
		g.drawRect(0, 0, IMG_WIDTH-1, IMG_HEIGHT-1);
		
		g.setColor(getRandColor(160, 200));
		for(int i = 0; i < 80; i++){
			int x = random.nextInt(IMG_WIDTH - 1);
			int y = random.nextInt(IMG_HEIGHT - 1);
			int x1 = random.nextInt(6) + 1;
			int y1= random.nextInt(12) + 1;
			g.drawLine(x, y, x + x1, y + y1);
		}
		
		g.setColor(getRandColor(160, 200));
		for(int i = 0; i < 80; i++){
			int x = random.nextInt(IMG_WIDTH - 1);
			int y = random.nextInt(IMG_HEIGHT - 1);
			int x1 = random.nextInt(6) + 1;
			int y1= random.nextInt(12) + 1;
			g.drawLine(x, y, x - x1, y - y1);
		}
		
		g.setFont(mFont);
		String sRand = "";
		for(int i = 0; i < 4; i++){
			String tmp = getRandomChar();
			sRand += tmp;
			g.setColor(new Color(20+random.nextInt(110), 20+random.nextInt(110), 20+random.nextInt(110)));
			g.drawString(tmp, 15*i + 10,15);
		}
		
		HttpSession session = request.getSession(true);
		session.setAttribute("rand", sRand);
		g.dispose();
		ImageIO.write(image,"JPEG",response.getOutputStream());
		
	}

	

}
