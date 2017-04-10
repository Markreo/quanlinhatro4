import com.quanlinhatro.Renter
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_regionshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/region/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(0)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(0)
invokeTag('breadcrumbs','qlnhatro',10,['title':("Khu/Dãy trọ"),'link':(createLink(controller: 'region', action: 'list')),'current':(region.name)],-1)
printHtmlPart(4)
if(true && (flash.message)) {
printHtmlPart(5)
expressionOut.print(flash.message)
printHtmlPart(6)
}
printHtmlPart(7)
createTagBody(2, {->
printHtmlPart(8)
createClosureForHtmlPart(9, 3)
invokeTag('link','g',27,['rel':("renter_edit"),'class':("edit"),'action':("edit"),'resource':(renterInstance),'style':("margin-right: 10px")],3)
printHtmlPart(10)
createClosureForHtmlPart(11, 3)
invokeTag('link','g',28,['style':("color: #e25856"),'onclick':("return confirm('Bạn có chắc chắc là sẽ xóa?')"),'action':("delete"),'resource':(renterInstance)],3)
printHtmlPart(12)
})
invokeTag('form','g',29,['url':([resource:renterInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(13)
})
invokeTag('captureBody','sitemesh',44,[:],1)
printHtmlPart(14)
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
