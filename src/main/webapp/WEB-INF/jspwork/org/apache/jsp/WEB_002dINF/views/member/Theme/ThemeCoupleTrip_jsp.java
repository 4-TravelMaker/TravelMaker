/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-07-31 08:50:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.member.Theme;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ThemeCoupleTrip_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1689727807040L));
    _jspx_dependants.put("jar:file:/C:/TravelMaker/src/main/webapp/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
    _jspx_dependants.put("jar:file:/C:/TravelMaker/src/main/webapp/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/fn.tld", Long.valueOf(1425946270000L));
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>TravelMaker</title>\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"image/small_logo.png\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/ThemePlaceNodeul.css\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/ef988defcf.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <main>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <section id=\"middle\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <section class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container1\">\r\n");
      out.write("                    <h2>날 풀리기만 기다렸다면!? 김해로 커플여행 가즈앙!</h2>\r\n");
      out.write("                    <b>클레이아크, 봉리단길, 테마파크, 김해천문대</b>\r\n");
      out.write("                </section>\r\n");
      out.write("                <section class=\"container2\">\r\n");
      out.write("                    좋아요 0     조회수 0                    \r\n");
      out.write("                </section>\r\n");
      out.write("                <section class=\"container2-1\">\r\n");
      out.write("                    <hr>\r\n");
      out.write("                </section>\r\n");
      out.write("                <section class=\"container3\">\r\n");
      out.write("                    \r\n");
      out.write("                    <section class=\"flex_container1\">\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"item\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripArt1.jpg\">\r\n");
      out.write("                                \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"item\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripBongridan1.jpg\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"item\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripSky1.jpg\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"item\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripThemePark1.jpg\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </section>  \r\n");
      out.write("\r\n");
      out.write("                </section>\r\n");
      out.write("                <section class=\"container4\">\r\n");
      out.write("                    <hr>\r\n");
      out.write("                </section>\r\n");
      out.write("                <section class=\"container5\">\r\n");
      out.write("                   \r\n");
      out.write("                            <b>이런 커플들에게 추천해 드립니다!</b>\r\n");
      out.write("                            <p>로맨틱한 여행코스로 행복한 추억을 남길 커플들</p>\r\n");
      out.write("                            <p>미술관부터 맛집이 가득한 거리</p>\r\n");
      out.write("                            <p>별을 볼수 있는 천문대까지 모두 추천해드립니다!</p>\r\n");
      out.write("                    \r\n");
      out.write("\r\n");
      out.write("                </section>\r\n");
      out.write("                <section class=\"container6\">\r\n");
      out.write("                    <b>김해커플여행</b>\r\n");
      out.write("                </section>\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container7\">\r\n");
      out.write("                    <section class=\"container7-1\">\r\n");
      out.write("                        <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripSub.jpg\">\r\n");
      out.write("                    </section>\r\n");
      out.write("                </section>\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container8\">\r\n");
      out.write("                    <section class=\"container8-1\">\r\n");
      out.write("                        <table>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li>사랑하는 연인과의 로맨틱함을 원하시나요?</li>\r\n");
      out.write("                                <li>로맨틱함 뒤에 숨은 서로의 미래를 그려 보고 싶으신 가요?</li>\r\n");
      out.write("                                <li>미술관 부터 마지막 별자리를 보며 대화해 보는건 어떠세요?</li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </table>\r\n");
      out.write("\r\n");
      out.write("                    </section>\r\n");
      out.write("                    \r\n");
      out.write("                </section>\r\n");
      out.write("               \r\n");
      out.write("                <section class=\"container9\">\r\n");
      out.write("                    <section class=\"container9-1\">\r\n");
      out.write("                        <section class=\"item3\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripArt2.jpg\">\r\n");
      out.write("                        </section>\r\n");
      out.write("                        <section class=\"item3\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripBongridan2.jpg\">\r\n");
      out.write("                        </section>\r\n");
      out.write("\r\n");
      out.write("                    </section>\r\n");
      out.write("\r\n");
      out.write("                </section>\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container10\">\r\n");
      out.write("                    <section class=\"container10-1\">\r\n");
      out.write("                        <section class=\"item4\">\r\n");
      out.write("                            <table>\r\n");
      out.write("                                 <ul>\r\n");
      out.write("                                    <li>클레이아크 미술관</li>\r\n");
      out.write("                                    <li>위치: 경남 김해시 진례면 진례로 275-51</li>\r\n");
      out.write("                                    <li>이용요금 : 2000원</li>\r\n");
      out.write("                                    <li>운영시간 : 10시~18시 //  매주 월요일 휴관</li>\r\n");
      out.write("                                    <li>주차 : 무료주차장</li>\r\n");
      out.write("                                 </ul>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </section>\r\n");
      out.write("\r\n");
      out.write("                        <section class=\"item4\">\r\n");
      out.write("                            <table>\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li>김해 봉리단길</li>\r\n");
      out.write("                                    <li>위치 : 김해대로 2273 회현동 일대</li>\r\n");
      out.write("                                    <li>주차 : 공용주차장</li>\r\n");
      out.write("                                    <li>가볼만한 곳 : 봉황 1935, 하라식당, 낙도맨션</li>\r\n");
      out.write("                                    \r\n");
      out.write("                                </ul>\r\n");
      out.write("                           </table>\r\n");
      out.write("                        </section>\r\n");
      out.write("\r\n");
      out.write("                    </section>\r\n");
      out.write("\r\n");
      out.write("                </section>\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container9\">\r\n");
      out.write("                    <section class=\"container9-1\">\r\n");
      out.write("                        <section class=\"item3\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripSky2.jpg\">\r\n");
      out.write("                        </section>\r\n");
      out.write("                        <section class=\"item3\">\r\n");
      out.write("                            <img src=\"../../resources/images/ThemeBoard/CoupleTrip/CoupleTripThemePark2.jpg\">\r\n");
      out.write("                        </section>\r\n");
      out.write("\r\n");
      out.write("                    </section>\r\n");
      out.write("\r\n");
      out.write("                </section>\r\n");
      out.write("\r\n");
      out.write("                <section class=\"container10\">\r\n");
      out.write("                    <section class=\"container10-1\">\r\n");
      out.write("                        <section class=\"item4\">\r\n");
      out.write("                            <table>\r\n");
      out.write("                                 <ul>\r\n");
      out.write("                                    <li>김해 천문대</li>\r\n");
      out.write("                                    <li>위치 : 김해시 가야테마길 254(어방동)</li>\r\n");
      out.write("                                    <li>이용요금 : 성인 4,000원, 미성년 3,000원</li>\r\n");
      out.write("                                    <li>운영시간 : 14:00~ 22:00 매달 첫주 월요일 휴관</li>\r\n");
      out.write("                                    <li>주차 : 공용주차장</li>\r\n");
      out.write("                                 </ul>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </section>\r\n");
      out.write("\r\n");
      out.write("                        <section class=\"item4\">\r\n");
      out.write("                            <table>\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li>가야테마파크</li>\r\n");
      out.write("                                    <li>위치 : 가야테마길 161(어방동)</li>\r\n");
      out.write("                                    <li>운영시간 : 09:30~18:00 </li>\r\n");
      out.write("                                    <li>이용요금 : 5,000원</li>\r\n");
      out.write("                                    <li>주차 : 공용주차장</li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                           </table>\r\n");
      out.write("                        </section>\r\n");
      out.write("\r\n");
      out.write("                    </section>\r\n");
      out.write("\r\n");
      out.write("                </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("               \r\n");
      out.write("               \r\n");
      out.write("            </section>    \r\n");
      out.write("           \r\n");
      out.write("        </section>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </main>\r\n");
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
