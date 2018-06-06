<template>
  <v-container fluid>
    <v-slide-y-transition mode="out-in">
      <v-layout column align-center>
        <img src="@/assets/logo.png" alt="flowers-logo.js" class="mb-5" height="200px">

      </v-layout>
    </v-slide-y-transition>

    <v-btn @click.stop="dialog = true"
      fixed
      dark
      fab
      bottom
      right
      color="pink">
      <v-icon>add</v-icon>
    </v-btn>
    <add-edit-order :isVisible="dialog" @dismiss="dialog = false"></add-edit-order>


  </v-container>
</template>

<script>

import AddEditOrder from '@/components/AddEditOrder.vue'

export default {
  data () {
    return {
      dialog: false,
      title: 'Flowers Order Management'
    }
  },
  components: {
    'add-edit-order': AddEditOrder
  },
  mounted() {
    axios.get(axios.baseUrl + '/orders.json').then((response) => {
      console.log(response.data);
    }, (error) => {
      console.err(error.data);
    })
  },
  name: 'HelloWorld'
}
</script>


<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1,
h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
