window.addEventListener("message", function(event) {
	var item = event.data
	var s_timer = item.timer
	var cooldown1 = item.cooldown1
	var cooldown2 = item.cooldown2
	var revive = item.revive
	var revive2 = item.revive2
	var text1 = item.text1

	if (item.ShowHud) {
		$("#container").fadeIn(500)

	} else if (item.HideHud) {
		$("#container").fadeOut(500)
	}

	if (item.cooldown1) {
		$(".revivetime").html(cooldown1)
	}

	if (item.cooldown2) {
		$(".revivetime2").html(cooldown2)
	}

	if (item.revive) {
		$(".revive").html(revive)
	}

	if (item.revive2) {
		$(".revive2").html(revive2)
	}

	if (item.text1) {
		$(".text1").html(text1)
	}
	
})