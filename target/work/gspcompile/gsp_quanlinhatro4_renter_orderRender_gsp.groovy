import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_renter_orderRender_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/renter/_orderRender.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
invokeTag('set','g',1,['var':("renters"),'value':(room.renter)],-1)
printHtmlPart(0)
if(true && (renters)) {
printHtmlPart(1)
if(true && (renters.size())) {
printHtmlPart(2)
expressionOut.print(renters.size())
printHtmlPart(3)
}
printHtmlPart(4)
for( renter in (renters) ) {
printHtmlPart(5)
expressionOut.print(renter.fullname)
printHtmlPart(6)
}
printHtmlPart(7)
}
printHtmlPart(0)
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
