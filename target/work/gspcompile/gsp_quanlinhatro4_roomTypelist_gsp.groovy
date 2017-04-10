import com.quanlinhatro.Renter
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_roomTypelist_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/roomType/list.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('breadcrumbs','qlnhatro',9,['current':("Loại phòng")],-1)
printHtmlPart(4)
expressionOut.print(createLink(controller: 'roomType', action: 'create'))
printHtmlPart(5)
invokeTag('message','qlnhatro',21,[:],-1)
printHtmlPart(6)
loop:{
int i = 0
for( type in (types) ) {
printHtmlPart(7)
expressionOut.print(type.name)
printHtmlPart(8)
expressionOut.print(createLink(controller: 'roomType', action: 'edit', id: type.id))
printHtmlPart(9)
expressionOut.print(type.name)
printHtmlPart(10)
expressionOut.print(createLink(controller: 'roomType', action: 'delete', id: type.id))
printHtmlPart(11)
createTagBody(3, {->
printHtmlPart(12)
invokeTag('hiddenField','g',40,['name':("typeId"),'value':(type.id)],-1)
printHtmlPart(12)
for( recommend in (com.quanlinhatro.RecommendPrice.findAllByRoomType(type)) ) {
printHtmlPart(13)
expressionOut.print(recommend.defaultRegion.name)
printHtmlPart(14)
invokeTag('hiddenField','g',44,['name':("id"),'value':(recommend.id)],-1)
printHtmlPart(15)
expressionOut.print(recommend.price)
printHtmlPart(16)
}
printHtmlPart(17)
})
invokeTag('form','g',56,['controller':("recommendPrice"),'action':("save"),'class':("form-horizontal")],3)
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
})
invokeTag('captureBody','sitemesh',91,[:],1)
printHtmlPart(20)
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
