<template>
  <v-app>
    <v-toolbar
      app
      :clipped-left="clipped"
    >
      <v-btn icon>
        <v-icon>local_florist</v-icon>
      </v-btn>
      <v-toolbar-title v-text="title"></v-toolbar-title>
      <v-spacer></v-spacer>
    </v-toolbar>
    <v-content>
      <router-view/>
    </v-content>
  </v-app>
</template>

<script>
export default {
  data () {
    return {
      clipped: false,
      drawer: true,
      fixed: false,
      items: [{
        icon: 'bubble_chart',
        title: 'Inspire'
      }],
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'Flowers Order Management'
    }
  },
  name: 'App'
}
</script>
