<template>
  <div id="app">
    <Video :seekTo="seekToTimestamp" src="/videos/今からあなたを脅迫します_ep1.mp4" v-on:timeUpdated="onTimeUpdated" />
  </div>
</template>

<script>
import Video from './components/Video.vue'

export default {
  data: function () {
    return {
      message: "Hello Vue!",
    }
  },
  components: {
    Video
  },
  methods: {
    onTimeUpdated (timestamp) {
    },
  }
}
</script>
