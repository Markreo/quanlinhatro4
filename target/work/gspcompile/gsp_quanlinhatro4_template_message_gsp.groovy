import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_template_message_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/template/_message.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
if(true && (flash.message)) {
printHtmlPart(0)
expressionOut.print(flash.message)
printHtmlPart(1)
}
printHtmlPart(2)
if(true && (flash.warn)) {
printHtmlPart(3)
expressionOut.print(flash.warn)
printHtmlPart(1)
}
printHtmlPart(2)
if(true && (flash.error)) {
printHtmlPart(3)
expressionOut.print(flash.error)
printHtmlPart(1)
}
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