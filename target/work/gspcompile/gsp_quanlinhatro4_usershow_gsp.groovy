import com.quanlinhatro.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_usershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'user.label', default: 'User'))],-1)
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
if(true && (userInstance?.username)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("user.username.label"),'default':("Username")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(userInstance),'field':("username")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.password)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("user.password.label"),'default':("Password")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(userInstance),'field':("password")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.region)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("user.region.label"),'default':("Region")],-1)
printHtmlPart(21)
for( r in (userInstance.region) ) {
printHtmlPart(22)
createTagBody(4, {->
expressionOut.print(r?.encodeAsHTML())
})
invokeTag('link','g',49,['controller':("region"),'action':("show"),'id':(r.id)],4)
printHtmlPart(23)
}
printHtmlPart(24)
}
printHtmlPart(17)
if(true && (userInstance?.accountExpired)) {
printHtmlPart(25)
invokeTag('message','g',57,['code':("user.accountExpired.label"),'default':("Account Expired")],-1)
printHtmlPart(26)
invokeTag('formatBoolean','g',59,['boolean':(userInstance?.accountExpired)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.accountLocked)) {
printHtmlPart(27)
invokeTag('message','g',66,['code':("user.accountLocked.label"),'default':("Account Locked")],-1)
printHtmlPart(28)
invokeTag('formatBoolean','g',68,['boolean':(userInstance?.accountLocked)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.enabled)) {
printHtmlPart(29)
invokeTag('message','g',75,['code':("user.enabled.label"),'default':("Enabled")],-1)
printHtmlPart(30)
invokeTag('formatBoolean','g',77,['boolean':(userInstance?.enabled)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.passwordExpired)) {
printHtmlPart(31)
invokeTag('message','g',84,['code':("user.passwordExpired.label"),'default':("Password Expired")],-1)
printHtmlPart(32)
invokeTag('formatBoolean','g',86,['boolean':(userInstance?.passwordExpired)],-1)
printHtmlPart(16)
}
printHtmlPart(33)
createTagBody(2, {->
printHtmlPart(34)
createTagBody(3, {->
invokeTag('message','g',94,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',94,['class':("edit"),'action':("edit"),'resource':(userInstance)],3)
printHtmlPart(35)
invokeTag('actionSubmit','g',95,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(36)
})
invokeTag('form','g',97,['url':([resource:userInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(37)
})
invokeTag('captureBody','sitemesh',99,[:],1)
printHtmlPart(38)
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
