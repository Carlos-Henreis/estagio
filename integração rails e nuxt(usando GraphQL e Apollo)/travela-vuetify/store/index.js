import axios from 'axios'

export const state = () => ({
  errors: [],
  travels: []
})

export const mutations = {
  add (state, err) {
    state.errors = err
  },
  allTravels (state, all) {
    state.travels = all
  },
  okSucess (state) {
    this.app.router.push('/sucess')
  }
}

export const actions = {
  add ({commit}, inputs) {
    axios.post('http://localhost:9998/api/v1/travels', { name: inputs.name, phone: inputs.phone, dateFrom: inputs.dateFrom, dateTo: inputs.dateTo, origin: inputs.origin, destination: inputs.destination, numberp: inputs.numberp })
      .then(function (response) {
        if (response.status === 299) {
          const test = JSON.parse(response.request.response)
          console.log(test)
          commit('add', test)
        } else {
          if (response.status === 201) {
            commit('okSucess')
          }
        }
      })
      .catch(function (error) {
        console.log(error)
      })
  }
}
