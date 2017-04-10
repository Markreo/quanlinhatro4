import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_layouts_sidebar_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/_sidebar.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(createLink(controller: 'home'))
printHtmlPart(1)
expressionOut.print(session.user?.currentRegion?.name ?: 'Dashborad')
printHtmlPart(2)
expressionOut.print(createLink(controller: 'room', action: 'index'))
printHtmlPart(3)
expressionOut.print(createLink(controller: 'renter', action: 'index'))
printHtmlPart(4)
expressionOut.print(createLink(controller: 'region', action: 'list'))
printHtmlPart(5)
expressionOut.print(createLink(controller: 'room', action: 'index'))
printHtmlPart(6)
expressionOut.print(controllerName  == 'profile' ? 'open' :'')
printHtmlPart(7)
expressionOut.print(createLink(controller: 'roomType', action: 'index'))
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1491812384000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
