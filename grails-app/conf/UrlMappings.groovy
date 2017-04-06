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

        "/khachthue"{
            controller = 'renter'
            action = 'index'
        }

        "/khachthue/$id" {
            controller = 'renter'
            action = 'show'
        }

        "/khachthue/themkhachthue" {
            controller = 'renter'
            action = 'create'
        }

        "/khu" {
            controller = 'region'
            action = 'list'
        }

        "/khu/themkhu" {
            controller = 'region'
            action = 'create'
        }

        "/khu/$id" {
            controller = 'region'
            action = 'edit'
        }

        "500"(view:'/error')
    }
}
