<template>
  <v-container>
    <v-toolbar light>
      <v-toolbar-title><h1>TRAVELA</h1></v-toolbar-title>
      <v-spacer></v-spacer>
      <p class="mt-1">Maecenas ipsum velit, consectetuer eu,ut, dictum at, dui. In rutrum. lobortis ut, dictum at, dui. In rutrum. Sed ac Maecenas ipsum velit, consectetuer eu, lo</p>
    </v-toolbar>
    <v-layout row wrap>
      <v-flex xs6>
        <v-card light class="px-4">
          <v-card-title primary-title>
            <h2 class="headline mb-0 text-xs-center">Create your next Travel</h2>
          </v-card-title>



          <v-form ref="form" @submit.prevent>
              <v-text-field
                label="Name"
                v-model="data.name"
              ></v-text-field>
              <v-text-field
                label="Phone"
                v-model="data.phone"
              ></v-text-field>
              <v-menu
                lazy
                :close-on-content-click="true"
                transition="scale-transition"
                offset-y
                full-width
                :nudge-right="40"
                max-width="290px"
                min-width="290px"
              >
                <v-text-field
                  slot="activator"
                  label="Date From"
                  v-model="data.dateFrom"
                ></v-text-field>
                <v-date-picker @input="data.dateFrom = $event" no-title scrollable actions>
                </v-date-picker>
              </v-menu>
              <v-menu
                lazy
                :close-on-content-click="true"
                transition="scale-transition"
                offset-y
                full-width
                :nudge-right="40"
                max-width="290px"
                min-width="290px"
              >
                <v-text-field
                  slot="activator"
                  label="Date To"
                  v-model="data.dateTo"
                ></v-text-field>
                <v-date-picker @input="data.dateTo = $event" no-title scrollable actions>
                </v-date-picker>
              </v-menu>
              <v-text-field
                label="Origin"
                v-model="data.origin"
              ></v-text-field>
              <v-text-field
                label="Destination"
                v-model="data.destination"
              ></v-text-field>
              <v-text-field
                type='number'
                label="Number People"
                v-model="data.numberp"
              ></v-text-field>
              <v-btn
                @click="createCode()"
              >
                submit
              </v-btn>
            </v-form>
        </v-card>
      </v-flex>
      <v-flex xs6>
        <v-card light class="px-4">
          <v-card-title primary-title>
            <div>
              <h2 class="headline mb-0 text-xs-center">About TravelA</h2>
            </div>
          </v-card-title>
          <v-card-media>
            <p class="text-xs-justify">
              Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel
            </p>
          </v-card-media>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>

</template>
<script>
import createTravel from '~/apollo/queries/createTravel.gql'

export default {
  data () {
    return {
      data: {
        name: '',
        phone: '',
        dateFrom: '',
        dateTo: '',
        origin: '',
        destination: '',
        numberp: ''
      }
    }
  },
  methods: {
    createCode () {
      // receive the defaultClient
      // most likely you would call mutations like following:
      this.$apollo.mutate({createTravel, ...this.data})
    }
  }
}
</script>
