import com.quanlinhatro.Detail
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_detailshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/detail/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'detail.label', default: 'Detail'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
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
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (detailInstance?.name)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("detail.name.label"),'default':("Name")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(detailInstance),'field':("name")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (detailInstance?.lease)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("detail.lease.label"),'default':("Lease")],-1)
printHtmlPart(19)
createTagBody(3, {->
expressionOut.print(detailInstance?.lease?.encodeAsHTML())
})
invokeTag('link','g',39,['controller':("lease"),'action':("show"),'id':(detailInstance?.lease?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (detailInstance?.value)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("detail.value.label"),'default':("Value")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(detailInstance),'field':("value")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (detailInstance?.price)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("detail.price.label"),'default':("Price")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(detailInstance),'field':("price")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (detailInstance?.dateCreated)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("detail.dateCreated.label"),'default':("Date Created")],-1)
printHtmlPart(25)
invokeTag('formatDate','g',66,['date':(detailInstance?.dateCreated)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (detailInstance?.lastUpdated)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("detail.lastUpdated.label"),'default':("Last Updated")],-1)
printHtmlPart(27)
invokeTag('formatDate','g',75,['date':(detailInstance?.lastUpdated)],-1)
printHtmlPart(16)
}
printHtmlPart(28)
createTagBody(2, {->
printHtmlPart(29)
createTagBody(3, {->
invokeTag('message','g',83,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',83,['class':("edit"),'action':("edit"),'resource':(detailInstance)],3)
printHtmlPart(30)
invokeTag('actionSubmit','g',84,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(31)
})
invokeTag('form','g',86,['url':([resource:detailInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',88,[:],1)
printHtmlPart(33)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1491812383000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
