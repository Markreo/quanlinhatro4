import com.quanlinhatro.Renter
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_regionlist_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/region/list.gsp" }
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
invokeTag('breadcrumbs','qlnhatro',10,['current':("Danh sách Khu/Dãy trọ")],-1)
printHtmlPart(4)
expressionOut.print(createLink(controller: 'region', action: 'create'))
printHtmlPart(5)
invokeTag('message','qlnhatro',20,[:],-1)
printHtmlPart(6)
loop:{
int i = 0
for( region in (regions) ) {
printHtmlPart(7)
expressionOut.print(i + 1)
printHtmlPart(8)
createTagBody(3, {->
expressionOut.print(region.name)
})
invokeTag('link','g',39,['action':("show"),'id':(region.id)],3)
printHtmlPart(8)
expressionOut.print(region.address)
printHtmlPart(8)
expressionOut.print(region.room?.size())
printHtmlPart(8)
expressionOut.print(region.note)
printHtmlPart(9)
if(true && (region.id != currentRegion.id)) {
printHtmlPart(10)
createClosureForHtmlPart(11, 4)
invokeTag('link','g',47,['controller':("region"),'action':("change"),'id':(region.id)],4)
printHtmlPart(12)
}
else {
printHtmlPart(13)
}
printHtmlPart(14)
i++
}
}
printHtmlPart(15)
})
invokeTag('captureBody','sitemesh',60,[:],1)
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
