import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_regionedit_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/region/edit.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',12,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(5)
invokeTag('breadcrumbs','qlnhatro',13,['current':("Tạo một Khu/Dãy trọ")],-1)
printHtmlPart(6)
createTagBody(2, {->
printHtmlPart(7)
invokeTag('render','g',74,['template':("/defaultRegion/line_special"),'model':([special: 'tienphong'])],-1)
printHtmlPart(8)
invokeTag('render','g',75,['template':("/defaultRegion/line_special"),'model':([special: 'tiendien'])],-1)
printHtmlPart(8)
invokeTag('render','g',76,['template':("/defaultRegion/line_special"),'model':([special: 'tiennuoc'])],-1)
printHtmlPart(9)
})
invokeTag('form','g',97,['url':([controller: 'region', action: 'save', id: region.id]),'class':("form-horizontal"),'id':("createRegion")],2)
printHtmlPart(10)
expressionOut.print(createLink(controller: 'defaultRegion', action: 'create'))
printHtmlPart(11)
})
invokeTag('captureBody','sitemesh',140,[:],1)
printHtmlPart(12)
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
