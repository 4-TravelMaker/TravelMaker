/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-07-26 07:38:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.member.SignUp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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
      out.write("    \r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>회원가입</title>\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/images/Share/small_logo.png\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/SignUp/SignUp.css\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/ef988defcf.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <main>\r\n");
      out.write("\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <section id=\"middle\">\r\n");
      out.write("            \r\n");
      out.write("\r\n");
      out.write("            <section class=\"right-section\">\r\n");
      out.write("                <section class=\"right-section-head\">회원가입<hr></section>\r\n");
      out.write("                <section class=\"right-section-area\">\r\n");
      out.write("                    <form action=\"signUp\" method=\"POST\"  onsubmit=\"return validate()\">\r\n");
      out.write("                        <table>\r\n");
      out.write("\r\n");
      out.write("                            \r\n");
      out.write("                                \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><label for=\"id\">아이디</label></td>\r\n");
      out.write("                                <td><input type=\"text\" id=\"id\" name=\"id\" placeholder=\"아이디 입력(소문자영어&숫자6~20글자)\" autocomplete='off'></td>\r\n");
      out.write("                                <td><button type=\"button\" id=\"id-check\" name=\"idDubcheck\" >중복확인</button></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                          \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <tr class=\"idcheck\">\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td><span class=\"idcheckArea\"></span></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><label for=\"memberName\">이름</label></td>\r\n");
      out.write("                                <td><input type=\"text\" id=\"memberName\" name=\"memberName\" placeholder=\"이름입력(한글2~6글자)\" autocomplete='off'></td>\r\n");
      out.write("\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr class=\"idcheck\">\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td><span class=\"nameText\"></span></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            \r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><label for=\"pw\">비밀번호</label></td>\r\n");
      out.write("                                <td><input type=\"password\" id=\"pw\" name=\"pw\" placeholder=\"비밀번호 입력(6~20글자)\"></td>\r\n");
      out.write("                                \r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><label for=\"pw2\">비밀번호 확인</label></td>\r\n");
      out.write("                                <td><input type=\"password\" id=\"pw2\" name=\"pw2\" placeholder=\"비밀번호 확인\"></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr class=\"idcheck\">\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td><span id=\"pwcheckarea\"></span></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><label for=\"nickname\">닉네임</label></td>\r\n");
      out.write("                                <td id=\"nickname-td\">\r\n");
      out.write("                                    <input type=\"text\" name=\"memberNickname\" id=\"nickname\" placeholder=\"닉네임 입력(한글 2~8글자)\" autocomplete='off'><br>\r\n");
      out.write("                                    <span id=\"nickname-span\">　</span>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td><button type=\"button\" id=\"nickname-check\">중복 확인</button></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td id=\"profile-td\"><label for=\"profile-btn\">프로필 사진</label></td>\r\n");
      out.write("                                <td id=\"profile-area\">\r\n");
      out.write("                                    <section id=\"profile\" style=\"margin-right: 35px;\">\r\n");
      out.write("                                        <section id=\"image-preview\">\r\n");
      out.write("                                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/images/profile.png\" id=\"basic-profile\">\r\n");
      out.write("                                        </section>\r\n");
      out.write("                                        <input id=\"real-upload\" type=\"file\" onchange=\"loadFile(this)\" name=\"profile\" accept=\"image/jpg, image/jpeg, image/png\" />\r\n");
      out.write("                                        <button type=\"button\" id=\"profile-btn\">사진 업로드</button>\r\n");
      out.write("                                    </section>\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td id=\"address-td\"><label for=\"address-btn\">주소</label></td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <input type=\"search\" class=\"address\" name=\"address\" id=\"zipcode\" placeholder=\"우편번호\" readonly>\r\n");
      out.write("                                    <button type=\"button\" id=\"address-btn\">주소 검색</button><br>\r\n");
      out.write("                                    <input type=\"text\" class=\"address\" name=\"address\"  id=\"address\" placeholder=\"주소\" readonly><br>\r\n");
      out.write("                                    <input type=\"text\" class=\"address\" name=\"address\" placeholder=\"상세 주소\" autocomplete='off'>\r\n");
      out.write("                                    \r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td style=\"position: relative;bottom: 13px;\">선호 테마</td>\r\n");
      out.write("                                <td style=\"padding: 20px 0;\">\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"액티비티\">액티비티</label>\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"맛집\">맛집</label>\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"카페\">가족여행</label>\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"반려견동반여행\">반려견 동반여행</label><br>\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"캠핑\">커플여행</label>\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"커플여행\">캠핑</label>\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"기차여행\">기차여행</label>\r\n");
      out.write("                                    <label><input type=\"checkbox\" name=\"theme\" value=\"가족여행\">카페</label>\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><label for=\"pwQuestion\">비밀번호 찾기 질문</label></td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <select name=\"pw-question\" id=\"pwQuestion\">\r\n");
      out.write("                                        <option value=\"basic\" selected>질문을 고르세요</option>\r\n");
      out.write("                                        <option value=\"1\">기억에 남는 추억의 장소는?</option>\r\n");
      out.write("                                        <option value=\"2\">자신의 인생 좌우명은?</option>\r\n");
      out.write("                                        <option value=\"3\">가장 기억에 남는 선생님 성함은?</option>\r\n");
      out.write("                                        <option value=\"4\">타인은 모르는 자신만의 신체비밀이 있다면?</option>\r\n");
      out.write("                                        <option value=\"5\">유년시절 가장 생각나는 친구 이름은?</option>\r\n");
      out.write("                                        <option value=\"6\">다시 태어나면 되고 싶은 것은?</option>\r\n");
      out.write("                                        <option value=\"7\">인상 깊게 읽은 책 이름은?</option>\r\n");
      out.write("                                        <option value=\"8\">자신의 별명이 있다면?</option>\r\n");
      out.write("                                        <option value=\"9\">받았던 선물 중 기억에 남는 독특한 선물은?</option>\r\n");
      out.write("                                        <option value=\"10\">자신의 보물 제 1호는?</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><label for=\"pwAnswer\">비밀번호 찾기 답변</label></td>\r\n");
      out.write("                                <td><input type=\"text\" name=\"pw-answer\" id=\"pwAnswer\" autocomplete='off'></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td class=\"submit\">\r\n");
      out.write("                                    <button id=\"submit-btn\" type=\"submit\">회원가입</button>\r\n");
      out.write("                                    \r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </section>\r\n");
      out.write("            </section>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("     \r\n");
      out.write("     \r\n");
      out.write("      		");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </main>\r\n");
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<script src=\"//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js\"></script>\r\n");
      out.write("	\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.7.0.min.js\" integrity=\"sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/SignUp/SignUp.js\"></script>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
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
