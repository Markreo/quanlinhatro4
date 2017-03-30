class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/" {
            controller = "home"
            action = "index"
        }


//        PHONGTRO
        "/phongtro" {
            controller = 'room'
            action = 'index'
        }

        "/phongtro/$id" {
            controller = 'room'
            action = 'show'
        }

        "500"(view:'/error')
    }
}
