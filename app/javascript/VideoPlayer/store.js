import { createStore } from 'vuex'

export default createStore({
  state: {
    currentTimestamp: 0
  },
  actions: {
    seekTo ({ commit }, timestamp) {
      commit('updateCurrentTimestamp', timestamp)
    }
  },
  mutations: {
    updateCurrentTimestamp (state, payload) {
      state = {
        ...state,
        currentTimestamp: payload
      }
    }
  },
  getters: {
    currentTimestamp (state) {
      return state.currentTimestamp
    }
  }
})
