import com.quanlinhatro.Use
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_use_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/use/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: useInstance, field: 'unit', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("use.unit.label"),'default':("Unit")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['name':("unit"),'from':(com.quanlinhatro.Unit?.values()),'keys':(com.quanlinhatro.Unit.values()*.name()),'required':(""),'value':(useInstance?.unit?.name())],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: useInstance, field: 'currentValue', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("use.currentValue.label"),'default':("Current Value")],-1)
printHtmlPart(2)
invokeTag('field','g',19,['name':("currentValue"),'type':("number"),'value':(useInstance.currentValue),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: useInstance, field: 'currentPrice', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("use.currentPrice.label"),'default':("Current Price")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['name':("currentPrice"),'type':("number"),'value':(useInstance.currentPrice),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: useInstance, field: 'isTIENDIEN', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("use.isTIENDIEN.label"),'default':("Is TIENDIEN")],-1)
printHtmlPart(7)
invokeTag('checkBox','g',37,['name':("isTIENDIEN"),'value':(useInstance?.isTIENDIEN)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: useInstance, field: 'isTIENNUOC', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("use.isTIENNUOC.label"),'default':("Is TIENNUOC")],-1)
printHtmlPart(7)
invokeTag('checkBox','g',46,['name':("isTIENNUOC"),'value':(useInstance?.isTIENNUOC)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: useInstance, field: 'isTIENPHONGs', 'error'))
printHtmlPart(9)
invokeTag('message','g',52,['code':("use.isTIENPHONGs.label"),'default':("Is TIENPHONG s")],-1)
printHtmlPart(7)
invokeTag('checkBox','g',55,['name':("isTIENPHONGs"),'value':(useInstance?.isTIENPHONGs)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: useInstance, field: 'name', 'error'))
printHtmlPart(10)
invokeTag('message','g',61,['code':("use.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',64,['name':("name"),'required':(""),'value':(useInstance?.name)],-1)
printHtmlPart(11)
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
