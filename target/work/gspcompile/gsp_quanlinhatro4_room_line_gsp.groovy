import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_room_line_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/room/_line.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
if(true && (room.status == com.quanlinhatro.Room.Status.TRONG)) {
printHtmlPart(0)
expressionOut.print(resource(file: 'images/home_1.png'))
printHtmlPart(1)
expressionOut.print(createLink(controller: 'room', action: 'show', id: room.id))
printHtmlPart(2)
expressionOut.print(room.name)
printHtmlPart(3)
expressionOut.print(room.status.name)
printHtmlPart(4)
expressionOut.print(room.price)
printHtmlPart(5)
expressionOut.print(room.note)
printHtmlPart(6)
}
printHtmlPart(7)
if(true && (room.status == com.quanlinhatro.Room.Status.DANGTHUE)) {
printHtmlPart(0)
expressionOut.print(resource(file: 'images/home_1.png'))
printHtmlPart(1)
expressionOut.print(createLink(controller: 'room', action: 'show', id: room.id))
printHtmlPart(2)
expressionOut.print(room.name)
printHtmlPart(3)
expressionOut.print(room.status.name)
printHtmlPart(8)
expressionOut.print(room.renter.size())
printHtmlPart(9)
}
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
