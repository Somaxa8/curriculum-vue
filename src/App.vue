<template>
    <v-app>
        <v-main>
            <v-container>
                <v-row>
                    <v-col cols="4">
                        <v-card color="secondary" class="overflow-hidden" elevation="0" style="border-radius: 20px" >
                            <v-card-title class="pa-0">
                                <v-sheet color="primary" height="130" width="100%">
                                    <v-btn text icon @click="changeLanguage">{{language}}</v-btn>
                                </v-sheet>
                                <div class="flex-fill d-flex justify-center" style="margin-top: -75px">
                                    <v-avatar size="220" class="bordered">
                                        <img src="https://cdn.vuetifyjs.com/images/john.jpg" alt="avatar">
                                    </v-avatar>
                                </div>
                            </v-card-title>
                            <!--Profile-->
                            <v-card-title class="d-block mt-5">
                                <h3 class="text-center text-uppercase">{{ lang.myProfile }}</h3>
                                <Divider />
                            </v-card-title>
                            <v-card-text class="text-center">
                                {{ lang.about }}
                            </v-card-text>
                            <!--Languages-->
                            <v-card-title class="d-block mt-1">
                                <h3 class="text-center text-uppercase">{{ lang.languages }}</h3>
                                <Divider />
                            </v-card-title>
                            <v-card-text class="d-flex justify-center">
                                <div>
                                    <div class="d-flex flex-row align-center">
                                        <h3>{{ lang.spanish }}: </h3>
                                        <v-rating v-model="esRanting" background-color="indigo lighten-3" color="indigo"/>
                                    </div>
                                    <div class="d-flex flex-row align-center">
                                        <h3>{{ lang.english }}: </h3>
                                        <v-rating v-model="enRanting" background-color="indigo lighten-3" color="indigo"/>
                                    </div>
                                </div>
                            </v-card-text>
                            <!--References-->
                            <v-card-title class="d-block mt-1">
                                <h3 class="text-center text-uppercase">{{ lang.references }}</h3>
                                <Divider />
                            </v-card-title>
                            <v-card-text>
                                <div class="d-flex align-center ml-4">
                                    <div>
                                        <v-img src="@/assets/company-icon.png" alt="company" width="50"/>
                                    </div>
                                    <div class="ml-3">
                                        <h3>Digitalapp</h3>
                                        <div class="d-flex">
                                            <h4>{{ lang.contact }}: <span>jeronimo@digitalapp.es</span></h4>
                                        </div>
                                        <div class="d-flex">
                                            <h4>{{ lang.myCharge }}: <span>{{ lang.webDeveloper }}</span></h4>
                                        </div>
                                    </div>
                                </div>
                            </v-card-text>
                            <v-card-text class="mt-6 pa-6 pb-6">
                                <div class="d-flex">
                                    <div>
                                        <v-img src="@/assets/linkedin-logo.png" alt="linkedin" width="140"/>
                                    </div>
                                    <span class="ml-6">in/silvio-eduardo-franco-chacin</span>
                                </div>
                                <v-divider class="ma-4"/>
                                <div class="d-flex align-center">
                                    <div>
                                        <v-img src="@/assets/github-logo.png" alt="linkedin" width="120" height="30"/>
                                    </div>
                                    <span class="ml-10">github.com/Somaxa8</span>
                                </div>
                            </v-card-text>
                        </v-card>
                    </v-col>
                    <v-col cols="8">
                        <v-card elevation="0">
                            <v-card-title class="justify-center flex-column">
                                <h1 class="mt-6 text-uppercase">{{ lang.fullname }}</h1>
                                <span class="mt-5" style="font-size: 24px">{{ lang.webDeveloper }}</span>
                            </v-card-title>
                            <v-card-title>
                                <v-progress-linear buffer-value="55" color="primary" reverse stream value="30"/>
                            </v-card-title>
                            <v-card-title class="justify-center">
                                <v-btn text>
                                    <v-icon>mdi-map-marker</v-icon>
                                    Quito
                                </v-btn>
                                <v-btn text>
                                    <v-icon>mdi-phone</v-icon>
                                    +593 96 388 6481
                                </v-btn>
                                <v-btn text>
                                    <v-icon>mdi-email</v-icon>
                                    Silviofrancoxa8@gmail.com
                                </v-btn>
                            </v-card-title>
                            <v-card-title class="d-block">
                                <h3 class="text-uppercase">{{ lang.workExperience }}</h3>
                                <Divider position="start" margin="0"/>
                            </v-card-title>
                            <v-card-text>
                                <v-timeline dense>
                                    <v-slide-x-reverse-transition group hide-on-leave>
                                        <v-timeline-item v-for="item in lang.lines" :key="item.id" :color="item.color" small fill-dot>
                                            <div class="d-flex flex-row align-center">
                                                <div>
                                                    <h3>{{ item.charge }}</h3>
                                                    <v-card-subtitle>{{ item.time }}</v-card-subtitle>
                                                </div>
                                                <v-card elevation="0" class="ml-6">
                                                    <v-card-title>{{ item.title }}</v-card-title>
                                                    <v-card-text>
                                                        {{ item.description }}
                                                    </v-card-text>
                                                </v-card>
                                            </div>
                                        </v-timeline-item>
                                    </v-slide-x-reverse-transition>
                                </v-timeline>
                            </v-card-text>
                            <v-card-title class="d-block">
                                <h3 class="text-uppercase">{{ lang.technology }}</h3>
                                <Divider position="start" margin="0"/>
                            </v-card-title>
                            <v-card-text>
                                <v-container>
                                    <v-row>
                                        <v-col v-for="item in lang.technologies" :key="item.title" cols="3">
                                            <v-card elevation="0">
                                                <v-img :src="item.icon" :alt="item.title" width="150"/>
                                            </v-card>
                                        </v-col>
                                    </v-row>
                                </v-container>
                            </v-card-text>
                        </v-card>
                    </v-col>
                </v-row>
            </v-container>
        </v-main>
    </v-app>
</template>

<script lang="ts">
import Vue from "vue"
import {Component, Watch} from "vue-property-decorator"
import Divider from "@/components/Divider.vue"
import english from "@/lang/english";
import spanish from "@/lang/spanish";

@Component({components: {Divider}})
export default class App extends Vue {
    language: string = "es"
    esRanting: number = 5
    enRanting: number = 2
    english: any = english
    spanish: any = spanish
    lang: any = spanish

    changeLanguage() {
        if (this.language == "es") {
            this.language = "en"
            this.lang = this.english
            return
        }
        if (this.language == "en") {
            this.language = "es"
            this.lang = this.spanish
        }
    }

}
</script>

<style>
* {
    font-family: system-ui;
}

.bordered {
    border-width: 4px;
    border-style: solid;
    border-color: white;
}

span {
    font-weight: normal;
}

h1 {
    font-size: 50px;
    font-weight: 900;
}
</style>