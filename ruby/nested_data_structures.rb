highway = {
  honda: ["jeff", "joe", "jill"],
  ford: ["bob", "brit", "brett"],
  toyota: ["abe", "ash", "anne"],
  trailer: {
    lambo: ["paul", "pam"],
    ferrari: ["chris", "cat"]
  },
  tesla: []
}

highway[:tesla].push("john", "jackie")

highway[:motorcycle] = "nicky"

highway[:trailer][:mclaren] = "matt"

p highway[:tesla][0]

p highway[:trailer][:lambo][1]

p highway[:trailer][:ferrari][0]

p highway[:trailer][:mclaren]

p highway[:motorcycle]

p highway[:motorcycle][0..3]


