import com.quanlinhatro.Use
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_useindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/use/index.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'use.label', default: 'Use'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',19,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
invokeTag('sortableColumn','g',27,['property':("unit"),'title':(message(code: 'use.unit.label', default: 'Unit'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',29,['property':("currentValue"),'title':(message(code: 'use.currentValue.label', default: 'Current Value'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',31,['property':("currentPrice"),'title':(message(code: 'use.currentPrice.label', default: 'Current Price'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',33,['property':("dateCreated"),'title':(message(code: 'use.dateCreated.label', default: 'Date Created'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',35,['property':("isTIENDIEN"),'title':(message(code: 'use.isTIENDIEN.label', default: 'Is TIENDIEN'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',37,['property':("isTIENNUOC"),'title':(message(code: 'use.isTIENNUOC.label', default: 'Is TIENNUOC'))],-1)
printHtmlPart(14)
loop:{
int i = 0
for( useInstance in (useInstanceList) ) {
printHtmlPart(15)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: useInstance, field: "unit"))
})
invokeTag('link','g',45,['action':("show"),'id':(useInstance.id)],3)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: useInstance, field: "currentValue"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: useInstance, field: "currentPrice"))
printHtmlPart(17)
invokeTag('formatDate','g',51,['date':(useInstance.dateCreated)],-1)
printHtmlPart(17)
invokeTag('formatBoolean','g',53,['boolean':(useInstance.isTIENDIEN)],-1)
printHtmlPart(17)
invokeTag('formatBoolean','g',55,['boolean':(useInstance.isTIENNUOC)],-1)
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
invokeTag('paginate','g',62,['total':(useInstanceCount ?: 0)],-1)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',65,[:],1)
printHtmlPart(21)
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
