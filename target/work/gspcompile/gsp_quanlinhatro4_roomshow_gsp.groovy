import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_roomshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/room/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
expressionOut.print(room.name)
})
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',12,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('breadcrumbs','qlnhatro',13,['current':(room.name)],-1)
printHtmlPart(4)
expressionOut.print(resource(file: 'images/home_1.png'))
printHtmlPart(5)
expressionOut.print(room.name)
printHtmlPart(6)
expressionOut.print(room.status.name)
printHtmlPart(7)
invokeTag('formatNumber','g',40,['number':(room.price),'format':("###,###,###"),'locale':("en")],-1)
printHtmlPart(8)
expressionOut.print(room.type?.name)
printHtmlPart(9)
expressionOut.print(room.useDien?.currentValue ?: 0)
printHtmlPart(10)
expressionOut.print(room.useDien?.currentValue ?: 0)
printHtmlPart(11)
invokeTag('set','g',62,['var':("lastUpdate"),'value':(room.useDien?.lastUpdated > room.useNuoc?.lastUpdated ? room.useDien?.lastUpdated : room.useNuoc?.lastUpdated)],-1)
printHtmlPart(12)
expressionOut.print((lastUpdate ?: room.lastUpdated)?.format('dd-MM-yyyy'))
printHtmlPart(13)
createTagBody(2, {->
printHtmlPart(14)
loop:{
int i = 0
for( use in (room.use) ) {
printHtmlPart(15)
expressionOut.print(i + 1)
printHtmlPart(16)
expressionOut.print(use.name)
printHtmlPart(17)
expressionOut.print(use.unit.name)
printHtmlPart(16)
invokeTag('formatNumber','g',108,['number':(use.currentPrice),'format':("###,###,###"),'locale':("en")],-1)
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
})
invokeTag('mainWidget','qlnhatro',118,[:],2)
printHtmlPart(20)
invokeTag('render','g',123,['template':("/renter/orderRender"),'model':([room: room])],-1)
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',128,[:],1)
printHtmlPart(22)
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
