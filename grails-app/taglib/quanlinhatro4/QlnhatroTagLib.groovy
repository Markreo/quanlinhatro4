package quanlinhatro4

class QlnhatroTagLib {
    static defaultEncodeAs = [all: 'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = 'qlnhatro'

    def breadcrumbs = { attrs, body ->
        out << "${g.render(template: '/layouts/breadcrumbs', model: [current: attrs.current, link: attrs.link, title: attrs.title])}"
    }

    def mainWidget = { attrs, body ->
        out << g.render(template: '/template/widgetHead', model: [title: attrs.title])
        out << body()
        out << g.render(template: '/template/widgetClose')
    }
}
