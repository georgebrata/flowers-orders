<template>
  <v-dialog
        v-model="isVisible"
        fullscreen
        hide-overlay
        transition="dialog-bottom-transition"
        scrollable
      >
        <v-card tile>
          <v-toolbar card dark color="primary">
            <v-btn icon dark @click.native="dismissOrder()">
              <v-icon>close</v-icon>
            </v-btn>
            <v-toolbar-title>Settings</v-toolbar-title>
            <v-spacer></v-spacer>
            <v-toolbar-items>
              <v-btn dark flat @click.native="saveOrder()">Save</v-btn>
            </v-toolbar-items>
            <v-menu bottom right offset-y>
              <v-btn slot="activator" dark icon>
                <v-icon>more_vert</v-icon>
              </v-btn>
            </v-menu>
          </v-toolbar>

        <div style="width: 60%; margin: 100px auto;">
          <v-form ref="form">
            <v-text-field
              v-model="name"
              :counter="10"
              label="Name"
              required
            ></v-text-field>
            <v-text-field
              v-model="price"
              label="Price"
              required
            ></v-text-field>
            <v-checkbox
              v-model="delivered"
              label="Mark as delivered"
              required
            ></v-checkbox>

            <v-btn @click="saveOrder()">
              submit
            </v-btn>
          </v-form>
        </div>




          <div style="flex: 1 1 auto;"></div>
        </v-card>
      </v-dialog>
</template>

<script>
import Vue from "vue";


export default Vue.extend({
  data() {
    return {
      name: "",
      price: 0,
      delivered: false
    };
  },
  props: {
    isVisible: Boolean,
    order: Object
  },
  computed: {
  },
  methods: {
    saveOrder() {
      this.$emit("dismiss");
      axios.post('')
      //this.src = api.php + "/recipes/edit/" + this.id;
    },
    dismissOrder() {
      this.$emit("dismiss");
    }
  }
});
</script>

