import com.quanlinhatro.Detail
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_detail_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/detail/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: detailInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("detail.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'required':(""),'value':(detailInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: detailInstance, field: 'lease', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("detail.lease.label"),'default':("Lease")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("lease"),'name':("lease.id"),'from':(com.quanlinhatro.Lease.list()),'optionKey':("id"),'required':(""),'value':(detailInstance?.lease?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: detailInstance, field: 'value', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("detail.value.label"),'default':("Value")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['name':("value"),'type':("number"),'value':(detailInstance.value),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: detailInstance, field: 'price', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("detail.price.label"),'default':("Price")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("price"),'type':("number"),'value':(detailInstance.price),'required':("")],-1)
printHtmlPart(7)
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
