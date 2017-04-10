import com.quanlinhatro.Renter
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_renter_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/renter/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: renterInstance, field: 'lastName', 'error'))
printHtmlPart(1)
invokeTag('textField','g',9,['class':("form-control"),'name':("lastName"),'value':(renterInstance?.lastName)],-1)
printHtmlPart(2)
expressionOut.print(hasErrors(bean: renterInstance, field: 'firstName', 'error'))
printHtmlPart(3)
invokeTag('textField','g',19,['class':("form-control"),'name':("firstName"),'required':(""),'value':(renterInstance?.firstName)],-1)
printHtmlPart(2)
expressionOut.print(hasErrors(bean: renterInstance, field: 'sex', 'error'))
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
expressionOut.print(it.radio)
printHtmlPart(6)
expressionOut.print(it.label)
printHtmlPart(7)
})
invokeTag('radioGroup','g',35,['name':("sex"),'values':(com.quanlinhatro.Renter.Sex?.values()),'labels':(com.quanlinhatro.Renter.Sex.values().name),'required':("required"),'value':(renterInstance?.sex?.name())],1)
printHtmlPart(8)
expressionOut.print(hasErrors(bean: renterInstance, field: 'phone', 'error'))
printHtmlPart(9)
invokeTag('textField','g',44,['class':("form-control"),'name':("phone"),'required':(""),'value':(renterInstance?.phone)],-1)
printHtmlPart(10)
expressionOut.print(hasErrors(bean: renterInstance, field: 'placeOfBirth', 'error'))
printHtmlPart(11)
invokeTag('textField','g',53,['class':("form-control"),'name':("placeOfBirth"),'required':(""),'value':(renterInstance?.placeOfBirth)],-1)
printHtmlPart(10)
expressionOut.print(hasErrors(bean: renterInstance, field: 'userID', 'error'))
printHtmlPart(12)
invokeTag('textField','g',62,['class':("form-control"),'name':("userID"),'required':(""),'value':(renterInstance?.userID)],-1)
printHtmlPart(10)
expressionOut.print(hasErrors(bean: renterInstance, field: 'yearOfBirth', 'error'))
printHtmlPart(13)
invokeTag('field','g',71,['class':("form-control date-picker"),'name':("yearOfBirth"),'type':("text"),'value':(renterInstance.yearOfBirth),'required':("")],-1)
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
