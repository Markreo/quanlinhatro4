import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_defaultRegion_line_special_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/defaultRegion/_line_special.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
if(true && (special == 'tiendien' || df?.tiendien)) {
printHtmlPart(0)
invokeTag('hiddenField','g',10,['name':("special"),'value':("tiendien")],-1)
printHtmlPart(1)
expressionOut.print(com.quanlinhatro.Unit.KG)
printHtmlPart(2)
expressionOut.print(com.quanlinhatro.Unit.NG)
printHtmlPart(3)
expressionOut.print(df?.currentPrice)
printHtmlPart(4)
if(true && (df?.id)) {
printHtmlPart(5)
}
else {
printHtmlPart(6)
}
printHtmlPart(7)
}
else if(true && (special == 'tiennuoc' || df?.tiennuoc)) {
printHtmlPart(8)
invokeTag('hiddenField','g',42,['name':("special"),'value':("tiennuoc")],-1)
printHtmlPart(1)
expressionOut.print(com.quanlinhatro.Unit.M3)
printHtmlPart(9)
expressionOut.print(com.quanlinhatro.Unit.NG)
printHtmlPart(10)
expressionOut.print(df?.currentPrice)
printHtmlPart(4)
if(true && (df?.id)) {
printHtmlPart(5)
}
else {
printHtmlPart(6)
}
printHtmlPart(7)
}
else if(true && (special == 'tienphong' || df?.tienphong)) {
printHtmlPart(11)
invokeTag('hiddenField','g',74,['name':("special"),'value':("tienphong")],-1)
printHtmlPart(1)
expressionOut.print(com.quanlinhatro.Unit.PHONG)
printHtmlPart(12)
expressionOut.print(com.quanlinhatro.Unit.NG)
printHtmlPart(13)
expressionOut.print(df?.currentPrice)
printHtmlPart(4)
if(true && (df?.id)) {
printHtmlPart(14)
}
else {
printHtmlPart(6)
}
printHtmlPart(7)
}
else {
printHtmlPart(15)
expressionOut.print(df?.name)
printHtmlPart(16)
invokeTag('hiddenField','g',107,['name':("special"),'value':("null")],-1)
printHtmlPart(17)
invokeTag('select','g',108,['name':("default.unit"),'from':(com.quanlinhatro.Unit.values()),'optionValue':("name"),'value':(df?.unit),'class':("form-control")],-1)
printHtmlPart(18)
expressionOut.print(df.currentPrice)
printHtmlPart(19)
if(true && (df?.id)) {
printHtmlPart(5)
}
else {
printHtmlPart(6)
}
printHtmlPart(7)
}
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
