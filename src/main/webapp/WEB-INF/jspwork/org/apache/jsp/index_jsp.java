/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-07-27 23:36:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1688964243119L));
    _jspx_dependants.put("jar:file:/C:/workspace/5_Server/TravelMaker/src/main/webapp/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>TravelMaker</title>\r\n");
      out.write("    <script src=\"https://unpkg.com/embla-carousel/embla-carousel.umd.js\"></script>\r\n");
      out.write("    <script src=\"https://unpkg.com/embla-carousel-autoplay/embla-carousel-autoplay.umd.js\"></script>\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/images/Share/small_logo.png\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/main-style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/mainHomePage-style.css\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/ef988defcf.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/263168e067.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <main>\r\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginMember}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("       \r\n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/header.jsp", out, false);
      out.write("\r\n");
      out.write("       \r\n");
      out.write("        <section id=\"middle\">\r\n");
      out.write("           \r\n");
      out.write("            <section class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container0\"></section>\r\n");
      out.write("                    <div class=\"temp2\">\r\n");
      out.write("                        <button class=\"embla__prev2\"><</button>  \r\n");
      out.write("                        <div class=\"embla\">\r\n");
      out.write("                            <div class=\"viewport2\">\r\n");
      out.write("                                <div class=\"embla__container\">\r\n");
      out.write("                                    \r\n");
      out.write("                                    <div class=\"embla__slide\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b30c2e42-dd00-463a-b726-0e40b1d13bbb\" style=\"display:contents\">\r\n");
      out.write("                                            <img src=\"resources/images/mainHome/sunset.png\"  style=\"width:100%;height:100%;object-fit:contain;\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"embla__slide\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=7cf983d9-35e7-49e0-914d-1e67665be577\" style=\"display:contents\"> \r\n");
      out.write("                                            <img src=\"resources/images/mainHome/incheon.png\" style=\"width:100%;height:100%;object-fit:contain;\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"embla__slide\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=dad57d1b-05e5-4633-a85b-58e32d93b1fe\" style=\"display:contents\">\r\n");
      out.write("                                            <img src=\"resources/images/mainHome/yeosu.png\" style=\"width:100%;height:100%;object-fit:contain;\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"embla__slide\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3301d3ce-aa66-483d-8e78-66b4cac3a426\" style=\"display:contents\">\r\n");
      out.write("                                            <img src=\"resources/images/mainHome/han-an.png\" style=\"width:100%;height:100%;object-fit:contain;\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"embla__slide\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b3e8cc50-c792-4c9a-8fac-49376c99ef41\" style=\"display:contents\">\r\n");
      out.write("                                            <img src=\"resources/images/mainHome/suwon.png\" style=\"width:100%;height:100%;object-fit:contain;\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"embla__slide\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=9b251ab6-7f28-4547-a5bb-508644372dc9\" style=\"display: contents\">\r\n");
      out.write("                                            <img src=\"resources/images/mainHome/summerflower.png\" style=\"width:100%;height:100%;object-fit:contain;\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"embla__slide\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=e46d4b2f-5da4-40ad-ac69-f6492bfb6816\" style=\"display: contents;\">\r\n");
      out.write("                                            <img src=\"resources/images/mainHome/chungnam.png\" style=\"width:100%;height:100%;object-fit:contain;\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    \r\n");
      out.write("                                </div> \r\n");
      out.write("                            </div>       \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <button class=\"embla__next2\">></button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <section class=\"container2\">\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                    </section>\r\n");
      out.write("\r\n");
      out.write("                    <section class=\"container3\"></section>\r\n");
      out.write("                    <br>\r\n");
      out.write("\r\n");
      out.write("                    <section class=\"container4\">\r\n");
      out.write("                        <b>이달의 베스트 여행지 Top 10</b>\r\n");
      out.write("                    </section>\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container5\">\r\n");
      out.write("                    <div class=\"temp\">\r\n");
      out.write("                        <button class=\"embla__prev fa-solid fa-arrow-left\"></button>\r\n");
      out.write("                        <div class=\"embla1\">\r\n");
      out.write("                            <div class=\"embla__viewport\">\r\n");
      out.write("                                <div class=\"embla__container1\">\r\n");
      out.write("                                    \r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=79ac09d6-364a-4762-b3d0-e7ee835b0063&big_category=A02&mid_category=A0205&big_area=1\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/han-river.jpg\">\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    반포대교 달빛무지개 분수\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=96166686-8e42-41c0-a9f0-a0d505c0643f&big_category=A01&mid_category=A0101&big_area=35\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/bomunjeong.jpg\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    보문정 (경주)\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=424cf626-55e1-444c-a3c7-1a7ae37138ee&big_category=A02&mid_category=A0205&big_area=6\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/young-do.jpg\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    영도 청학배수지 전망대\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=8fba2de6-87b3-4dad-9066-471d2e8f520f&con_type=12100\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/nam-i.JPG\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    남이섬\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f5da2334-1c8c-4049-8e06-4db38333a57f&big_category=A01&mid_category=A0101&big_area=39\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/sungsanilchulbong.PNG\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                  성산일출봉\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=66dba60b-a623-4753-a3b4-76a62fcbbe05&big_category=A02&mid_category=A0201&big_area=37\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/JEONJU.PNG\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    전북 전주 한옥마을 [슬로시티]\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=1fb3cc64-aabd-495f-ae45-52b76c162a9f&big_category=A02&mid_category=A0205&big_area=33\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/danyang.PNG\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    단양 수양개빛터널\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=0c70bb97-5ea0-4f1c-99e8-9a8cad34a596&big_category=A01&mid_category=A0101&big_area=36\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/sangdo.jpg\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    상주은모래비치\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f8357c6d-5185-4c55-b3c0-363c043b3462&big_category=A02&mid_category=A0205&big_area=38\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/dolsan.PNG\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    돌산대교\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"embla__slide1\">\r\n");
      out.write("                                        <a href=\"https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=7f215512-d70e-4616-96c2-57b6c2d7789f&big_category=A01&mid_category=A0101&big_area=32\" style=\"text-decoration:none\">\r\n");
      out.write("                                            <div class=\"photo item\">\r\n");
      out.write("                                                <img src=\"resources/images/mainHome/top10/haniranderpam.PNG\" >\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    하늬라벤더팜\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                                \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <button class=\"embla__next fa-solid fa-arrow-right\"></button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("                <br>\r\n");
      out.write("                <section class=\"container6\">\r\n");
      out.write("                    <b>테마</b>\r\n");
      out.write("                </section>\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                    <div class=\"temp1\">\r\n");
      out.write("                        <button class=\"embla__prev1 fa-solid fa-arrow-left\"></button>\r\n");
      out.write("                        <div class=\"embla2\">\r\n");
      out.write("                            <div class=\"embla__viewport1\">\r\n");
      out.write("                                    <div class=\"embla__container2\">\r\n");
      out.write("                                        <div class=\"embla__slide2\">\r\n");
      out.write("                                            <a href=\"#\" style=\"text-decoration:none\">\r\n");
      out.write("                                                <section class=\"item2 photo1\">\r\n");
      out.write("                                                    <img src=\"resources/images/mainHome/theme/chilgok.png\">\r\n");
      out.write("                                                </section>\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    유유자적 걸으며 즐기는\r\n");
      out.write("                                                    <br>\r\n");
      out.write("                                                    경북 칠곡 여행\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"embla__slide2\">        \r\n");
      out.write("                                            <a href=\"#\" style=\"text-decoration:none\">\r\n");
      out.write("                                                <section class=\"item2 photo1\">\r\n");
      out.write("                                                    <img src=\"resources/images/mainHome/theme/yangyang.png\" >\r\n");
      out.write("                                                </section>\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    바닷바람을 만끽할 수 있는\r\n");
      out.write("                                                    <br>\r\n");
      out.write("                                                    강원 양양 여행\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"embla__slide2\">\r\n");
      out.write("                                            <a href=\"#\" style=\"text-decoration:none\">\r\n");
      out.write("                                                <section class=\"item2 photo1\">\r\n");
      out.write("                                                    <img src=\"resources/images/mainHome/theme/youngdong.png\" >\r\n");
      out.write("                                                </section>\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    그림 같은 풍경이 펼쳐지는\r\n");
      out.write("                                                    <br>\r\n");
      out.write("                                                    충북 영동 여행\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("\r\n");
      out.write("                                        <div class=\"embla__slide2\">\r\n");
      out.write("                                            <a href=\"#\" style=\"text-decoration:none\">\r\n");
      out.write("                                                <section class=\"item2 photo1\">\r\n");
      out.write("                                                    <img src=\"resources/images/mainHome/theme/activities.png\" >\r\n");
      out.write("                                                </section>\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    더위와 스트레스 날려버릴\r\n");
      out.write("                                                    <br>\r\n");
      out.write("                                                    속이 뻥 뚫리는 액티비티\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        \r\n");
      out.write("                                        <div class=\"embla__slide2\">\r\n");
      out.write("                                            <a href=\"#\" style=\"text-decoration:none\">\r\n");
      out.write("                                                <section class=\"item2 photo1\">\r\n");
      out.write("                                                    <img src=\"resources/images/mainHome/theme/gosung.png\" >\r\n");
      out.write("                                                </section>\r\n");
      out.write("                                                <strong>\r\n");
      out.write("                                                    여름 무더위를 피할\r\n");
      out.write("                                                    <br>\r\n");
      out.write("                                                    강원 고성,삼척 물놀이 명소\r\n");
      out.write("                                                </strong>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                            \r\n");
      out.write("                                    </div>\r\n");
      out.write("                            </div>        \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <button class=\"embla__next1 fa-solid fa-arrow-right\"></button>       \r\n");
      out.write("                    </div>       \r\n");
      out.write("\r\n");
      out.write("            </section>\r\n");
      out.write("\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/footer.jsp", out, false);
      out.write("\r\n");
      out.write("        \r\n");
      out.write("    </main>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        /* 메인 부분 */\r\n");
      out.write("\r\n");
      out.write("        var emblaNode = document.querySelector(\".viewport2\");\r\n");
      out.write("        var options = { loop: true };\r\n");
      out.write("        var plugins = [EmblaCarouselAutoplay()]; // Plugins\r\n");
      out.write("  \r\n");
      out.write("        var embla = EmblaCarousel(emblaNode, options, plugins);\r\n");
      out.write("\r\n");
      out.write("        // Grab button nodes\r\n");
      out.write("        const prevButtonNode2 = document.querySelector('.embla__prev2')\r\n");
      out.write("        const nextButtonNode2 = document.querySelector('.embla__next2')\r\n");
      out.write("\r\n");
      out.write("        // Add click listeners\r\n");
      out.write("        prevButtonNode2.addEventListener('click', embla.scrollPrev, true)\r\n");
      out.write("        nextButtonNode2.addEventListener('click', embla.scrollNext, true)\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        /* 이달의 베스트 여행지 top10 부분 */\r\n");
      out.write("        \r\n");
      out.write("        // Grab wrapper nodes\r\n");
      out.write("        const rootNode = document.querySelector('.embla1')\r\n");
      out.write("        const viewportNode = rootNode.querySelector('.embla__viewport')\r\n");
      out.write("\r\n");
      out.write("        // Grab button nodes\r\n");
      out.write("        const prevButtonNode = document.querySelector('.embla__prev')\r\n");
      out.write("        const nextButtonNode = document.querySelector('.embla__next')\r\n");
      out.write("\r\n");
      out.write("        // Initialize the carousel\r\n");
      out.write("        const embla1 = EmblaCarousel(viewportNode)\r\n");
      out.write("\r\n");
      out.write("        // Add click listeners\r\n");
      out.write("        prevButtonNode.addEventListener('click', embla1.scrollPrev, false)\r\n");
      out.write("        nextButtonNode.addEventListener('click', embla1.scrollNext, false)\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        /* 테마 부분 */\r\n");
      out.write("\r\n");
      out.write("        // Grab wrapper nodes\r\n");
      out.write("        const rootNode1 = document.querySelector('.embla2')\r\n");
      out.write("        const viewportNode1 = rootNode1.querySelector('.embla__viewport1')\r\n");
      out.write("\r\n");
      out.write("        // Grab button nodes\r\n");
      out.write("        const prevButtonNode1 = document.querySelector('.embla__prev1')\r\n");
      out.write("        const nextButtonNode1 = document.querySelector('.embla__next1')\r\n");
      out.write("\r\n");
      out.write("        // Initialize the carousel\r\n");
      out.write("        const embla2 = EmblaCarousel(viewportNode1)\r\n");
      out.write("\r\n");
      out.write("        // Add click listeners\r\n");
      out.write("        prevButtonNode1.addEventListener('click', embla2.scrollPrev, false)\r\n");
      out.write("        nextButtonNode1.addEventListener('click', embla2.scrollNext, false)\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
