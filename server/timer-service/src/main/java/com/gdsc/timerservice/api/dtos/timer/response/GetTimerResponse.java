package com.gdsc.timerservice.api.dtos.timer.response;


import com.gdsc.timerservice.api.entity.timer.TimerStatus;
import com.gdsc.timerservice.common.enums.Emoji;
import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class GetTimerResponse {

	private LocalDateTime startedAt;

	private Long totalTimeSeconds;

	private Long remainedSeconds;

	private Emoji emoji;

	private TimerStatus timerStatus;
}
