import com.quanlinhatro.Unit
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_defaultRegion_create_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/defaultRegion/_create.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
if(true && (left)) {
printHtmlPart(2)
if(true && ("tienphong" in left)) {
printHtmlPart(3)
}
printHtmlPart(4)
if(true && ("tiendien" in left)) {
printHtmlPart(5)
}
printHtmlPart(4)
if(true && ("tiennuoc" in left)) {
printHtmlPart(6)
}
printHtmlPart(7)
}
else {
printHtmlPart(8)
}
printHtmlPart(9)
invokeTag('hiddenField','g',47,['name':("special"),'value':("null")],-1)
printHtmlPart(10)
invokeTag('select','g',48,['name':("default.unit"),'from':(com.quanlinhatro.Unit.values()),'optionValue':("name"),'class':("form-control")],-1)
printHtmlPart(11)
})
invokeTag('formRemote','g',57,['name':("create_default"),'url':([controller: 'defaultRegion', action:'lineNew']),'class':("form-horizontal"),'id':("create_default"),'onSuccess':("addnewline(data)"),'before':("if(\$('#create_default').find('input.has-error').length != 0) {return false} ")],1)
printHtmlPart(12)
invokeTag('select','g',60,['name':("default.unit"),'from':(com.quanlinhatro.Unit.values()),'optionValue':("name"),'class':("form-control")],-1)
printHtmlPart(13)
expressionOut.print(com.quanlinhatro.Unit.PHONG)
printHtmlPart(14)
expressionOut.print(com.quanlinhatro.Unit.NG)
printHtmlPart(15)
expressionOut.print(com.quanlinhatro.Unit.M3)
printHtmlPart(16)
expressionOut.print(com.quanlinhatro.Unit.PHONG)
printHtmlPart(17)
expressionOut.print(com.quanlinhatro.Unit.KG)
printHtmlPart(18)
expressionOut.print(com.quanlinhatro.Unit.PHONG)
printHtmlPart(19)
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
