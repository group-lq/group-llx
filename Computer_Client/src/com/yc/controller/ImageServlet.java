package com.yc.controller;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

@WebServlet("/image.s")
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("image.s");
		//这个方法实现验证码的生成
         BufferedImage bi=new BufferedImage(68, 22,BufferedImage.TYPE_INT_RGB);//创建图像缓冲区
         Graphics g=bi.getGraphics(); //通过缓冲区创建一个画布
         Color c=new Color(200,150,255); //创建颜色
         /*根据背景画了一个矩形框
          */
         g.setColor(c);//为画布创建背景颜色
         g.fillRect(0, 0, 68,22); //fillRect:填充指定的矩形
         
         char[] ch="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghigklmnopqrstuvwxyz0123456789".toCharArray();//转化为字符型的数组
         Random r=new Random();
         int len=ch.length;
         int index; //index用于存放随机数字
         StringBuffer sb=new StringBuffer();
         for(int i=0;i<4;i++){
             index=r.nextInt(len);//产生随机数字
             g.setColor(new Color(r.nextInt(88),r.nextInt(188),r.nextInt(255)));  //设置颜色
             g.drawString(ch[index]+"",(i*15)+3, 18);//画数字以及数字的位置
             sb.append(ch[index]);
         }
         
       //将数字保留在session中，便于后续的使用
         request.getSession().setAttribute("picCode",sb.toString()); 
         System.out.println("3232"+sb);
         ImageIO.write(bi, "JPG", response.getOutputStream()); 
         
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
