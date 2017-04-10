import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_loginauth_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/login/auth.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'charset':("utf-8")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',12,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',12,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("description"),'content':("login page")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',15,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':("/"),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',17,['gsp_sm_xmlClosingForEmptyTag':("/"),'http-equiv':("Content-Type"),'content':("text/html; charset=utf-8")],-1)
printHtmlPart(4)
expressionOut.print(resource(dir: 'assets/css', file: 'bootstrap.min.css'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'assets/css', file: 'font-awesome.min.css'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'assets/css', file: 'weather-icons.min.css'))
printHtmlPart(7)
expressionOut.print(resource(dir: 'assets/css', file: 'beyond.min.css'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'assets/css', file: 'demo.min.css'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'assets/css', file: 'typicons.min.css'))
printHtmlPart(8)
expressionOut.print(resource(dir: 'assets/css', file: 'animate.min.css'))
printHtmlPart(9)
expressionOut.print(resource(dir: 'assets/css/skins', file: 'blue.min.css'))
printHtmlPart(10)
})
invokeTag('captureHead','sitemesh',37,[:],1)
printHtmlPart(11)
createTagBody(1, {->
printHtmlPart(12)
expressionOut.print(postUrl)
printHtmlPart(13)
expressionOut.print(resource(dir: 'assets/js', file: 'jquery.min.js'))
printHtmlPart(14)
expressionOut.print(resource(dir: 'assets/js', file: 'bootstrap.min.js'))
printHtmlPart(15)
})
invokeTag('captureBody','sitemesh',66,[:],1)
printHtmlPart(16)
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
