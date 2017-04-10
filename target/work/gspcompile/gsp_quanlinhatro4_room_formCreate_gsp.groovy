import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_room_formCreate_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/room/_formCreate.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
createTagBody(1, {->
printHtmlPart(0)
expressionOut.print(region?.defaultTienPhong?.currentPrice)
printHtmlPart(1)
if(true && (ng)) {
printHtmlPart(2)
}
printHtmlPart(3)
invokeTag('set','g',23,['var':("types"),'value':(com.quanlinhatro.RoomType.findAllByRegion(region))],-1)
printHtmlPart(3)
if(true && (types)) {
printHtmlPart(4)
invokeTag('select','g',28,['rel':("room_type"),'name':("room.type"),'from':(types),'optionKey':("id"),'optionValue':("name"),'class':("form-control"),'noSelection':(['':'--Loại phòng--'])],-1)
printHtmlPart(5)
}
printHtmlPart(6)
invokeTag('select','g',35,['name':("room.status"),'from':(com.quanlinhatro.Room.Status.values()),'optionValue':("name"),'class':("form-control")],-1)
printHtmlPart(7)
invokeTag('actionSubmit','g',46,['value':("Form Đầy Đủ"),'action':("formCreateMore"),'class':("btn")],-1)
printHtmlPart(8)
invokeTag('actionSubmit','g',47,['value':("Lưu"),'action':("save"),'class':("btn")],-1)
printHtmlPart(9)
})
invokeTag('form','g',51,['class':("form-horizontal")],1)
printHtmlPart(10)
expressionOut.print(createLink(controller: 'recommendPrice', action: 'getPriceCommend'))
printHtmlPart(11)
expressionOut.print(region?.defaultTienPhong?.id)
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
