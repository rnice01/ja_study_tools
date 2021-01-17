<template>
  <div>
    <video ref="playerRef" :width="width" :height="height" controls>
      <source :src="src" type="video/mp4">
      Your browser does not support the video tag.
    </video>
  <div>
    <ul>
      <li v-for="(sub, i) in subs" :key="i" :class="sub.active ? 'active' : ''" @click="() => seekTo(sub.start)">{{sub.text}}</li>
    </ul>
  </div>
  </div>
</template>

<script>
import { onMounted, ref, reactive } from 'vue'

export default {
  props: {
    height: {
      type: String,
      default: "300"
    },
    width: {
      type: String,
      default: "300"
    },
    src: {
      type: String,
      required: true
    },
  },
  setup (props, context) {
    const playerRef = ref(null)
    const state = reactive({
      currentTimeStamp: '',
      subs: [
        {
          text: "fjasfjdjasfj",
          start: 1,
          end: 3,
          active: false
        },
        {
          text: "sjflkdjf asdkjflkfj ajkdfj",
          start: 3.3,
          end: 5,
          active: false
        },
        {
          text: "adsfkasjfskjadj",
          start: 5.1,
          end: 10,
          active: true
        }
      ]
    })

    const seekTo = (time) => {
      playerRef.value.currentTime = time
    }

    const timeUpdateCallback = (e) => {
      state.currentTimeStamp = Number(playerRef.value.currentTime)
      state.subs = state.subs.map(s => {
        if (isInRange(s)) {
          s.active = true
        } else {
          s.active = false
        }
        return s
      })

      context.emit('timeUpdated', e.timeStamp)
    }

    const isInRange = (sub) => {
      console.log(sub)
      console.log(state.currentTimeStamp)
      return (state.currentTimeStamp >= sub.start && state.currentTimeStamp <= sub.end)
    }

    onMounted(() => {
      playerRef.value.addEventListener('timeupdate', timeUpdateCallback)
    })

    return {
      playerRef,
      subs: state.subs,
      isInRange,
      seekTo
    }
  }
}
</script>

<style scoped>
 li.active {
   color: red;
 }
</style>
